#ifndef FILTER_EXECUTOR_HPP_
#define FILTER_EXECUTOR_HPP_

#include "Detection.hpp"
#include "Extraction.hpp"
#include "Parser.hpp"

/**
 * @brief the filter executor combines the provided functionality by the detection and extraction classes.
 * It will make sure every image is filtered properly and only the shape requested in a specification is marked.
 * When finished it will make sure the result of a specification is showed to the user.
 * 
 */
class FilterExecutor
{
public:
    /**
     * @brief Construct a new Filter Executor object
     * @param aDisplayMode the displaymode
     */
    explicit FilterExecutor(const DisplayMode& aDisplayMode);

    /**
     * @brief Destroy the Filter Executor object
     */
    virtual ~FilterExecutor();

    /**
     * @brief function that calls the necessary extraction -and detection function(s) to run a filter
     * 
     * @param original the original frame where the filter has to be executed upon
     * @param specification the specification contains information about the filter request
     * @return cv::Mat the original image where the filter has run upon
     */
    cv::Mat filter(const cv::Mat& original, const Specification& specification);

    /**
     * @brief function that verifies if a set of contours is a specific function
     * 
     * @param shape the shape to be detected
     * @param contours the detected set of contours
     * @param index the position in the contours vector that indicates the current contour to be handled
     * @param filterDetails instance of struct FilterDetails that contain the result of the filter process
     * @return true if the contours matched the shape to be detected
     * @return false if the contours didn't match the shape to be detected
     */
    bool isObject(const supportedShape& shape, const std::vector<std::vector<cv::Point>>& contours, 
                  int index, FilterDetails& filterDetails) const;

    /** Extration instance extracs an image based on a color specified in a specification */
    Extractor extractor;

    /** Detection instance detects certain objects after image extraction */
    Detector detector;

private:
    /** Vector of filterdetails per detected shape */
    std::vector<FilterDetails> result;

    /** The way the filter results are displayed */
    DisplayMode displayMode;

    /**
     * @brief function that displays the result according to the requested display-option
     * 
     * @param original the original image the result has to be displayed on
     * @param displayMode the way the results are displayed
     * @param originalSpec the original specification
     * @param clockTicks the nr of clock ticks it took if no specifications were found
     */
    void showResult(cv::Mat& original, const DisplayMode& displayMode, const Specification& originalSpec,
            const std::clock_t& clockTicks) const;
};

#endif //FILTER_EXECUTOR