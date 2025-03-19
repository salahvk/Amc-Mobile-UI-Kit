import 'package:flutter/material.dart';
import 'package:amc_ui_kit/styles/app_colors.dart';
import 'package:amc_ui_kit/styles/amc_font_weight.dart';
import 'package:amc_ui_kit/styles/amc_text_styles.dart';
import 'package:amc_ui_kit/widgets/amc_text.dart';

class AMCToast extends StatelessWidget {
  const AMCToast.success({
    super.key,
    required this.text,
  })  : _backgroundColor = AppColors.toastBgNormal,
        iconName = "ic_check_mark";

  const AMCToast.normal({
    super.key,
    required this.text,
  })  : _backgroundColor = AppColors.toastBgNormal,
        iconName = null;

  const AMCToast.warning({
    super.key,
    required this.text,
  })  : _backgroundColor = AppColors.toastBgWarning,
        iconName = null;

  const AMCToast.error({
    super.key,
    required this.text,
  })  : _backgroundColor = AppColors.toastBgError,
        iconName = null;

  final String text;
  final Color _backgroundColor;
  final String? iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: iconName != null ? 6 : 10.0,
      ),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: _backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: AMCText(
              text,
              style: AMCTextStyle.h5,
              textAlign: TextAlign.center,
              color: AppColors.white,
              fontWeight: AMCFontWeight.semibold600,
            ),
          ),
        ],
      ),
    );
  }
}
