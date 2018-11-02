#ifndef SPECIFICATION_CONFIG_HPP
#define SPECIFICATION_CONFIG_HPP

#include <string>
#include <unordered_map>

/**
 * @brief Struct that contains mapped values for a supported color
 */
struct colorRange
{
    /** Minimum hue (0-179) for a specific color */
    int minHue;
    /** Maximum hue (0-179) for a specific color */
    int maxHue;
    /** Minimum saturation (0-255) for a specific color */
    int minSaturation;
    /** Maximum saturation (0-255) for a specific color */
    int maxSaturation;
    /** Minimum value (0-255) for a specific color */
    int minValue;
    /** Maximum value (0-255) for a specific color */
    int maxValue;
};

/** Struct that contains the options to show filter results */
enum class DisplayMode: uint8_t
{
    toConsole,
    inImage
};

/** This enum contains all colors that are supported (can be detected) */
enum class supportedColor: uint8_t
{
    red,
    green,
    blue,
    yellow,
    black,
    white
};

/** This enum contains all shapes that are supported (can be detected) */
enum class supportedShape: uint8_t
{
    circle,
    halfCircle,
    square,
    rectangle,
    triangle
};

/** This unordered map contains the string representation for each supported color */
const std::unordered_map<std::string, supportedColor> supportedColorMap =
{
    {"rood", supportedColor::red},
    {"groen", supportedColor::green},
    {"blauw", supportedColor::blue},
    {"geel", supportedColor::yellow},
    {"zwart", supportedColor::black},
    {"wit", supportedColor::white}
};

/** This unordered map contains the string representation for each supported shape */
const std::unordered_map<std::string, supportedShape> supportedShapeMap =
{
    {"cirkel", supportedShape::circle},
    {"halve cirkel", supportedShape::halfCircle},
    {"vierkant", supportedShape::square},
    {"rechthoek", supportedShape::rectangle},
    {"driehoek", supportedShape::triangle}
};

/** This unordered map contains paths to reference shapes for each supported shape */
const std::unordered_map<supportedShape, std::string> shapeReferencePaths = 
{
    {supportedShape::triangle, "../reference/triangle.jpg"},
    {supportedShape::square, "../reference/square.png"},
    {supportedShape::rectangle, "../reference/rectangle.png"},
    {supportedShape::circle, "../reference/circle.png"},
    {supportedShape::halfCircle, "../reference/half_circle.jpg"}
};

#endif //SPECIFICATION_CONFIG_HPP