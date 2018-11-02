#include "FilterExecutor.hpp"

#include <iostream>
#include <map>

FilterExecutor::FilterExecutor(const DisplayMode& aDisplayMode):
    displayMode(aDisplayMode)
{
}

FilterExecutor::~FilterExecutor()
{
}

cv::Mat FilterExecutor::filter(const cv::Mat& original, const Specification& specification)
{   
    std::clock_t totalClockTicks = 0;

    std::vector<std::vector<cv::Point>> contours;
    std::vector<cv::Vec4i> hierarchy;

    cv::Mat originalFiltered = original;

    // Extraction process
    cv::Mat extractedImage = extractor.extract(original, specification.color);
    
    // Finding all contours of the shapes in the extrated image
    cv::findContours(extractedImage, contours, hierarchy, cv::RETR_TREE, cv::CHAIN_APPROX_SIMPLE, cv::Point(0, 0));

    // Remove former results
    this->result.clear();

    // Start counting clock ticks for detection process
    auto detectionTimerStart = std::clock();

    // For each detected shape: determine if the shape is the requested shape (from the given specification)
    for (unsigned int detectedShape = 0; detectedShape < contours.size(); ++detectedShape)
    {
        FilterDetails filterDetails;
        auto startDetectionShape = std::clock();

        if (isObject(specification.shape, contours, detectedShape, filterDetails))
        {
            auto endDetectionShape = std::clock();
            filterDetails.clockTicks = endDetectionShape - startDetectionShape;

            // Drawing borders and displaying information
            cv::Scalar color = cv::Scalar(255, 0, 135);
            cv::drawContours(originalFiltered, contours, detectedShape, color, 2, 8, hierarchy, 0, cv::Point());

            result.push_back(filterDetails);
        }
    }
    auto detectionTimerEnd = std::clock();
    totalClockTicks = detectionTimerEnd - detectionTimerStart;

    this->showResult(originalFiltered, this->displayMode, specification, totalClockTicks);

    return originalFiltered;
}

bool FilterExecutor::isObject(const supportedShape& shape, const std::vector<std::vector<cv::Point>>& contours, 
                              int index, FilterDetails& filterDetails) const
{
    auto possibleShape = detector.detectShape(contours[index]);

    Parser parser;

    if (!possibleShape.has_value())
    {
        return false;
    }

    if (possibleShape != shape)
    {
        if (shape == supportedShape::halfCircle && possibleShape == supportedShape::rectangle)
        {
            if (detector.checkIfRect(contours, index, filterDetails)) { return false; }
            else { return detector.checkIfHalfCircle(contours, index, filterDetails); }
        }
        else if (shape == supportedShape::rectangle && possibleShape == supportedShape::halfCircle)
        {
            if (detector.checkIfRect(contours, index, filterDetails)) { return true; }
            else { return false; }
        }
        else if (shape == supportedShape::rectangle && possibleShape == supportedShape::triangle)
        {
            if (detector.checkIfTriangle(contours, index, filterDetails)) { return false;}
            else { return detector.checkIfRect(contours, index, filterDetails); }
        }
        else if (shape == supportedShape::triangle && possibleShape == supportedShape::rectangle)
        {
            if (detector.checkIfRect(contours, index, filterDetails)) { return false; }
            else { return detector.checkIfTriangle(contours, index, filterDetails); }
        }
        else if (shape == supportedShape::rectangle && possibleShape == supportedShape::square)
        {
            return detector.checkIfRect(contours, index, filterDetails);
        }
        else if (shape == supportedShape::square && possibleShape == supportedShape::rectangle)
        {
            return detector.checkIfSquare(contours, index, filterDetails);
        }
        return false;
    }

    switch (shape)
    {
        case supportedShape::circle:
        {
            return detector.checkIfCircle(contours, index, filterDetails);
        }
        case supportedShape::halfCircle:
        {
            return detector.checkIfHalfCircle(contours, index, filterDetails);
        }
        case supportedShape::square:
        {
            return detector.checkIfSquare(contours, index, filterDetails);
        }
        case supportedShape::triangle:
        {
            return detector.checkIfTriangle(contours, index, filterDetails);
        }
        case supportedShape::rectangle:
        {
            return detector.checkIfRect(contours, index, filterDetails);
        }
    }
    return false;
}

void FilterExecutor::showResult(cv::Mat& original, const DisplayMode& displayMode,
                                const Specification& originalSpec, const std::clock_t& clockTicks) const
{
    Parser parser;
    switch (displayMode)
    {
        case DisplayMode::toConsole:
        {
            if (result.empty())
            {
                std::cout   << "Er zijn geen objecten gedetecteerd die voldeden aan de specificatie: [" 
                            << parser.strFromShape(originalSpec.shape) << "] [" << parser.strFromColor(originalSpec.color) << "]. "
                            << "Aantal klok tikken: " << clockTicks << "." << std::endl;
            }
            else 
            {
                for (const auto& details : result)
                {
                    std::cout   << parser.strFromShape(originalSpec.shape) << " gedetecteerd met een oppervlakte van: " << details.surface 
                                << " en het middelpunt (x, y) op (" << details.xPosCenter << "," << details.yPosCenter << "). " 
                                << "Het aantal klok tikken was: " << details.clockTicks << "." << std::endl;
                }
            }
            break;
        }
        case DisplayMode::inImage:
        {
            auto textColor = cv::Scalar(50, 39, 86);
            double textSize = 0.47;
            int textWidth = 2;

            if (result.empty())
            {
                std::string textA = "Er zijn geen objecten gedetecteerd die voldeden aan de specificatie:";
                std::string textB = "[" + parser.strFromShape(originalSpec.shape) + "] [" + parser.strFromColor(originalSpec.color)
                                    + "]. Aantal klok tikken: " + std::to_string(clockTicks) + ".";
                cv::putText(original, textA, cv::Point(25, 25),
                cv::FONT_ITALIC, textSize, textColor, textWidth);

                cv::putText(original, textB, cv::Point(25, 50),
                cv::FONT_ITALIC, textSize, textColor, textWidth);
            }
            else
            {
                for (const auto& details : result)
                {
                    std::string textA = "Oppervlakte: " + std::to_string(int(details.surface)) + ".";
                    std::string textB = "X en Y: " +
                    std::to_string(int(details.xPosCenter)) + " , " + std::to_string(int(details.yPosCenter)) + 
                    ".";
                    std::string textC = "Klok tikken: " + std::to_string(details.clockTicks) + ".";
                    
                    cv::putText(original, textA, cv::Point(details.xPosCenter - 15, details.yPosCenter),
                    cv::FONT_ITALIC, textSize, textColor, textWidth);

                    cv::putText(original, textB, cv::Point(details.xPosCenter - 15, details.yPosCenter+14),
                    cv::FONT_ITALIC, textSize, textColor, textWidth);

                    cv::putText(original, textC, cv::Point(details.xPosCenter - 15, details.yPosCenter+28),
                    cv::FONT_ITALIC, textSize, textColor, textWidth);
                }
            }
            break;
        }
    }
}