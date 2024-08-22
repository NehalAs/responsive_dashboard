import 'package:flutter/material.dart';

class AppUtil{
//! steps
//1 scaleFactor
//2 responsive fontSize
//3(min ,max fontSize)
  static double getResponsiveFontSize(context, {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = scaleFactor * fontSize;
    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    //mobile =400
    //tablet = 700
    //desktop = 100
    double width = MediaQuery.sizeOf(context).width;

    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 100;
    }
  }
}