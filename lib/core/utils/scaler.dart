import 'package:flutter/material.dart';

/// A function to scale a number based on screen size without flutter_screenutil.
/// [value] is the original value to scale.
/// [type] determines scaling for width, height, or text.
/// Use "w" for width, "h" for height, and "sp" for text scaling.
double scaleValue(BuildContext context, double value, {String type = "w"}) {
  final screenSize = MediaQuery.of(context).size;
  const designSize = Size(360, 640); // Replace with your design's width and height

  switch (type) {
    case "w": // Scale based on width
      return value * (screenSize.width / designSize.width);
    case "h": // Scale based on height
      return value * (screenSize.height / designSize.height);
    case "sp": // Scale based on the smaller dimension (text scaling)
      final scaleFactor = (screenSize.width / designSize.width + screenSize.height / designSize.height) / 2;
      return value * scaleFactor;
    default:
      throw ArgumentError("Invalid type. Use 'w', 'h', or 'sp'.");
  }
}