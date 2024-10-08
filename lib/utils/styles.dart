import 'package:flutter/material.dart';
import 'package:responsive/utils/app_ui.dart';
import 'package:responsive/utils/app_util.dart';

class Styles{

  static TextStyle textStyle24w600(context) {
    return  TextStyle(
      fontSize:AppUtil.getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: AppUI.blueF2,
    );
  }

  static TextStyle textStyle20w600(context) {
    return TextStyle(
      fontSize:AppUtil.getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: AppUI.blue61
    );
  }

  static TextStyle textStyle20w500(context) {
    return  TextStyle(
      fontSize: AppUtil.getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: AppUI.white,
    );
  }

  static TextStyle textStyle18w600(context) {
    return TextStyle(
      fontSize: AppUtil.getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: AppUI.blueF2,
    );
  }


  static TextStyle textStyle16w700(context) {
    return TextStyle(
      fontSize: AppUtil.getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: AppUI.blueF2,
    );
  }

  static TextStyle textStyle16w600(context) {
    return TextStyle(
      fontSize: AppUtil.getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: AppUI.blue61
    );
  }

  static TextStyle textStyle16w500(context) {
    return TextStyle(
      fontSize: AppUtil.getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: AppUI.blue61
    );
  }

  static TextStyle textStyle16w400(context) {
    return TextStyle(
      fontSize: AppUtil.getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: AppUI.blue61
    );
  }


  static TextStyle textStyle14w400(context) {
    return TextStyle(
      fontSize: AppUtil.getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: AppUI.greyAA,
    );
  }


  static TextStyle textStyle12w400(context) {
    return TextStyle(
      fontSize: AppUtil.getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: AppUI.greyAA
    );
  }

}