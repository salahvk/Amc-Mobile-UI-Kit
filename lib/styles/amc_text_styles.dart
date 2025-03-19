import 'package:flutter/material.dart';
import 'package:amc_ui_kit/amc_ui_kit.dart';
import 'package:amc_ui_kit/utils/constants.dart';

class AMCTextStyle {
  const AMCTextStyle._(this.style);

  AMCTextStyle copyWith({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
  }) {
    return AMCTextStyle._(
      style.copyWith(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        decoration: textDecoration,
      ),
    );
  }

  final TextStyle style;

  /// color: textOne
  ///
  /// fontSize: 40
  ///
  /// fontFamily: Poppins
  ///
  /// fontWeight: FontWeight.w600 (semiBold)
  static const AMCTextStyle h1 = AMCTextStyle._(
    TextStyle(
      color: AppColors.textOne,
      fontSize: 40,
      height: 52 / 40,
      fontFamily: kPoppinsFontFamily,
      fontWeight: AMCFontWeight.regular400,
    ),
  );

  static const AMCTextStyle h2 = AMCTextStyle._(
    TextStyle(
      color: AppColors.textOne,
      fontSize: 28,
      height: 36 / 28,
      fontFamily: kPoppinsFontFamily,
      fontWeight: AMCFontWeight.regular400,
    ),
  );

  static const AMCTextStyle h3 = AMCTextStyle._(
    TextStyle(
      color: AppColors.textOne,
      fontSize: 24,
      height: 28 / 24,
      fontFamily: kPoppinsFontFamily,
      fontWeight: AMCFontWeight.regular400,
    ),
  );

  static const AMCTextStyle h4 = AMCTextStyle._(
    TextStyle(
      color: AppColors.textOne,
      fontSize: 18,
      height: 28 / 18,
      fontFamily: kPoppinsFontFamily,
      fontWeight: AMCFontWeight.regular400,
    ),
  );

  static const AMCTextStyle h5 = AMCTextStyle._(
    TextStyle(
      color: AppColors.textOne,
      fontSize: 14,
      height: 16 / 14,
      fontFamily: kPoppinsFontFamily,
      fontWeight: AMCFontWeight.regular400,
    ),
  );

  static const AMCTextStyle h6 = AMCTextStyle._(
    TextStyle(
      color: AppColors.textOne,
      fontSize: 12,
      height: 14 / 12,
      fontFamily: kPoppinsFontFamily,
      fontWeight: AMCFontWeight.regular400,
    ),
  );

  // for Paragraph
  static const AMCTextStyle paragraph1 = AMCTextStyle._(
    TextStyle(
      color: AppColors.textOne,
      fontSize: 12,
      height: 22 / 12,
      fontFamily: kPoppinsFontFamily,
      fontWeight: AMCFontWeight.regular400,
    ),
  );

  static const AMCTextStyle paragraph2 = AMCTextStyle._(
    TextStyle(
      color: AppColors.textOne,
      fontSize: 14,
      height: 26 / 14,
      fontFamily: kPoppinsFontFamily,
      fontWeight: AMCFontWeight.regular400,
    ),
  );

  static const AMCTextStyle paragraph3 = AMCTextStyle._(
    TextStyle(
      color: AppColors.textOne,
      fontSize: 16,
      height: 28 / 16,
      fontFamily: kPoppinsFontFamily,
      fontWeight: AMCFontWeight.regular400,
    ),
  );

  static const AMCTextStyle paragraph4 = AMCTextStyle._(
    TextStyle(
      color: AppColors.textOne,
      fontSize: 18,
      height: 28 / 18,
      fontFamily: kPoppinsFontFamily,
      fontWeight: AMCFontWeight.regular400,
    ),
  );
}
