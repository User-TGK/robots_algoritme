#include "Detection.hpp"

#include <algorithm>
#include <initializer_list>
#include <cmath>

void FilterDetails::setDetectionResult(bool aFound, int aSurface, int aXPosCenter, int aYPosCenter)
{
    this->found = aFound;
    this->surface = aSurface;
    this->xPosCenter = aXPosCenter;
    this->yPosCenter = aYPosCenter;
}

Detector::Detector()
{
    this->loadReferenceContours();    
}

Detector::~Detector()
{
}

bool Detector::loadReferenceContours()
{
    std::map<supportedShape, cv::Mat> referenceImages;
    for (const auto& referenceImagePath : shapeReferencePaths)
    {
        referenceImages[referenceImagePath.first] = cv::imread(referenceImagePath.second, CV_LOAD_IMAGE_GRAYSCALE);
        if (!referenceImages[referenceImagePath.first].data)
        {
            return false;
        }
    }
    for (const auto& referenceImage: referenceImages)
    {
        cv::Mat binary;
        std::vector<std::vector<cv::Point>> contours;
        cv::inRange(referenceImage.second, cv::Scalar(0), cv::Scalar(100), binary);
		cv::findContours(binary, contours, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);

        if (contours.size() != 1)
        {
            return false;
        }
        referenceContours[referenceImage.first] = contours[0];
    }
    return true;
}

std::optional<supportedShape> Detector::detectShape(const std::vector<cv::Point>& contour) const
{
    std::map<supportedShape, double> shapeMap;
    for (auto referenceContour: referenceContours)
    {
        shapeMap[referenceContour.first] = cv::matchShapes(contour, referenceContour.second, CV_CONTOURS_MATCH_I1, 0);
    }
    supportedShape bestResult;
    double bestResultFactor = 1.0;

    for (auto result: shapeMap)
    {
        if (result.second < bestResultFactor)
        {
            bestResult = result.first;
            bestResultFactor = result.second;
        }
    }
    if (bestResultFactor <= minResultFactor)
    {
        return bestResult;
    }
    return std::nullopt;
}

bool Detector::checkIfSquare(const std::vector<std::vector<cv::Point>>& contours, int index,
                            FilterDetails& filterDetails) const
{
    std::vector<cv::Point> approx;
    cv::approxPolyDP(cv::Mat(contours[index]), approx, cv::arcLength(cv::Mat(contours[index]), true)*0.04, true);
    
    auto area = cv::contourArea(contours[index]);

    const unsigned short nrOfSides = 4;
    if (approx.size() == nrOfSides && area > this->minimumObjectSize)
    {
        /** Factor determines how close the detected shape should be to a square to be treated like a square */
        double factor = 0.85;
        double widthA = cv::norm(approx[0] - approx[1]);
        double widthB = cv::norm(approx[1] - approx[2]);
        double widthC = cv::norm(approx[2] - approx[3]);
        double widthD = cv::norm(approx[3] - approx[0]);

        double averageWidth = (widthA + widthB + widthC + widthD) / nrOfSides;
        if (widthA == 0 || widthB == 0 || widthC == 0 || widthD == 0 || averageWidth < minimumObjectSize/10)
        {
            return false;
        }
        if /** Any side is > base side divided by the factor: return false */
        (
            widthA < (averageWidth / 2 + (factor * averageWidth)) &&
            widthB < (averageWidth / 2 + (factor * averageWidth)) &&
            widthC < (averageWidth / 2 + (factor * averageWidth)) &&
            widthD < (averageWidth / 2 + (factor * averageWidth)) 
        )
        {  
            auto moments = cv::moments(contours[index]);

            auto xPos = int(moments.m10 / moments.m00);
            auto yPos = int(moments.m01 / moments.m00);

            filterDetails.setDetectionResult(true, (int)area, (int)xPos, (int)yPos);

            /** Else: the shape is (close enough to) a square: return true */
            return true;
        }
    }
    filterDetails.found = false;

    return false;
}

bool Detector::checkIfRect(const std::vector<std::vector<cv::Point>>& contours, int index,
                            FilterDetails& filterDetails) const
{
    std::vector<cv::Point> approx;
    cv::approxPolyDP(cv::Mat(contours[index]), approx, cv::arcLength(cv::Mat(contours[index]), true)*0.04, true);
    
    auto area = cv::contourArea(contours[index]);

    const unsigned short nrOfSides = 4;
    if (approx.size() == nrOfSides && area > this->minimumObjectSize + 200)
    {
        double deviationFactor = 2.35;
        double surface = cv::contourArea(approx);
        double AB = cv::norm(approx[0] - approx[1]);
        double BC = cv::norm(approx[1] - approx[2]);
        double CD = cv::norm(approx[2] - approx[3]);
        double AD = cv::norm(approx[3] - approx[0]);
 
        double maxSide = std::max({AB, BC, CD, AD});
        double minSide = std::min({AB, BC, CD, AD});

        if (std::abs(surface - (maxSide * minSide)) < (maxSide * deviationFactor))
        {
            auto moments = cv::moments(contours[index]);

            auto xPos = int(moments.m10 / moments.m00);
            auto yPos = int(moments.m01 / moments.m00);

            filterDetails.setDetectionResult(true, (int)area, (int)xPos, (int)yPos);
            
            return true;
        }
    }
    return false;
}

/** A triangle is a closed shape with 3 angles where the sum of 3 angles is (almost) equal to 180° */
bool Detector::checkIfTriangle(const std::vector<std::vector<cv::Point>>& contours, int index,
                                FilterDetails& filterDetails) const
{
    std::vector<cv::Point> approx;
    cv::approxPolyDP(cv::Mat(contours[index]), approx, cv::arcLength(cv::Mat(contours[index]), true)*0.04, true);
    
    auto area = cv::contourArea(contours[index]);

    const unsigned short nrOfSides = 3;
    if (approx.size() == nrOfSides && area > this->minimumObjectSize)
    {
        double total = 0;
        double margin = 2.0; /** The triangle has been allowed a deviation of 1.0° relative to 180° */

        double AB = cv::norm(approx[0] - approx[1]);
        double BC = cv::norm(approx[1] - approx[2]);
        double AC = cv::norm(approx[2] - approx[0]);

        total += cosineLaw(AB, BC, AC);
        total += cosineLaw(BC, AB, AC);
        total += cosineLaw(AC, BC, AB);

        if (std::abs(180 - total) <= margin)
        {
            auto moments = cv::moments(contours[index]);

            auto xPos = int(moments.m10 / moments.m00);
            auto yPos = int(moments.m01 / moments.m00);

            filterDetails.setDetectionResult(true, (int)area, (int)xPos, (int)yPos);

            /** If the total of the three corners dont add up to +/- 180° the shape is not a triangle */
            return true;
        }
    }
    return false;
}

/** A circle is a shape where the surface of the shape is equal to π * r2 &&
 ** Each line from the center to the border has the same length */ 
bool Detector::checkIfCircle(const std::vector<std::vector<cv::Point>>& contours, int index,
                            FilterDetails& filterDetails) const
{
    auto area = cv::contourArea(contours[index]);
    cv::Rect rect = cv::boundingRect(contours[index]);

    int radius = rect.width / 2;
    double margin = 0.2;

    if (std::abs(1 - ((double)rect.width / rect.height))     <= margin &&
		std::abs(1 - (area / (CV_PI * std::pow(radius, 2)))) <= margin &&
        area > this->minimumObjectSize                                 &&
        contours[index].size() >= 4)
        {
            auto moments = cv::moments(contours[index]);

            auto xPos = int(moments.m10 / moments.m00);
            auto yPos = int(moments.m01 / moments.m00);

            filterDetails.setDetectionResult(true, (int)area, (int)xPos, (int)yPos);

            return true;
        }
    return false;
}

bool Detector::checkIfHalfCircle(const std::vector<std::vector<cv::Point>>& contours, int index,
                                    FilterDetails& filterDetails) const
{
    auto area = cv::contourArea(contours[index]);
    cv::RotatedRect mappedRect = cv::minAreaRect(contours[index]);
    cv::Rect rect(cv::Point(0,0), mappedRect.size);

    double radius = std::min(rect.height, rect.width);
    double width = std::max(rect.height, rect.width);
    double surface = CV_PI * std::pow(radius, 2)/2;

    if (
        contours[index].size() >= 4     &&
        area > this->minimumObjectSize  &&
        surface <= (area * 1.20)        &&
        surface >= (area * 0.80)        &&
        std::abs((width/2) - radius) < (0.65 * radius)
        )
    {
        auto moments = cv::moments(contours[index]);

        auto xPos = int(moments.m10 / moments.m00);
        auto yPos = int(moments.m01 / moments.m00);

        filterDetails.setDetectionResult(true, (int)area, (int)xPos, (int)yPos);

        return true;
    }
    return false;
}

/** Implementation based on: https://en.wikipedia.org/wiki/Law_of_cosines 
 ** C++ implementation of: 'a² = b² + c² -2bc * cos(A)' */
double Detector::cosineLaw(const double a, const double b, const double c) const
{
    double angle;

    angle = (b*b + c*c - a*a) / (2.0 * b * c);
    angle = std::acos(angle) * 180.0/M_PI;

    return angle;
}