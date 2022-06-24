import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  static void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenHeight = mediaQueryData?.size.width;
    screenWidth = mediaQueryData?.size.height;
  }
}

double? getProportionalHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;

  return (inputHeight/812.0) * screenHeight!;
}

double? getProportionalWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenHeight;

  return (inputWidth/375.0) * screenWidth!;
}
