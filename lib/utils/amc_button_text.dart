import 'package:flutter/material.dart';
import 'package:amc_ui_kit/styles/app_colors.dart';
import 'package:amc_ui_kit/utils/constants.dart';

class AMCButtonText extends StatelessWidget {
  const AMCButtonText({
    super.key,
    required this.text,
    this.color = AppColors.buttonTextPrimary,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: kPoppinsFontFamily,
        height: 14 / 14,
      ),
      textAlign: TextAlign.center,
    );
  }
}
