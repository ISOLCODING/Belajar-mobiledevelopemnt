import 'package:flutter/material.dart';

// Vertical Spacing
Widget verticalSpace(double height) => SizedBox(height: height);

// Horizontal Spacing
Widget horizontalSpace(double width) => SizedBox(width: width);

// Screen Size Helpers
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;