import 'package:flutter/material.dart';
import 'package:amc_ui_kit/images/app_icon.dart';
import 'package:amc_ui_kit/styles/app_colors.dart';
import 'package:amc_ui_kit/styles/amc_text_styles.dart';
import 'package:amc_ui_kit/utils/constants.dart';

class AMCSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextStyle? hintStyle;
  final double borderRadius;
  final Color borderColor;
  final Color backgroundColor;
  final AppIcon? prefixIcon;
  final EdgeInsetsGeometry contentPadding;
  final ValueChanged<String>? onChanged;

  const AMCSearchBar({
    super.key,
    this.controller,
    this.hintText = "Search",
    this.hintStyle,
    this.borderRadius = 4,
    this.borderColor = AppColors.textThree,
    this.backgroundColor = AppColors.background,
    this.prefixIcon = const AppIcon("$kAssetsIcons/ic_search.svg", size: 24),
    this.contentPadding = const EdgeInsets.only(left: 12, top: 8, bottom: 8),
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: prefixIcon,
          ),
          hintText: hintText,
          hintStyle: hintStyle ??
              AMCTextStyle.paragraph2.copyWith(color: AppColors.textThree).style,
          border: InputBorder.none,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
        ),
      ),
    );
  }
}
