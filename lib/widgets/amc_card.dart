import 'package:flutter/material.dart';
import 'package:amc_ui_kit/styles/app_colors.dart';
import 'package:amc_ui_kit/widgets/amc_paddings.dart';

class AMCCard extends StatelessWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final double borderRadius;
  final Widget? child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const AMCCard.card1({
    super.key,
    this.child,
    this.borderColor = AppColors.divider1,
    this.borderRadius = 8.0,
    this.padding = const AMCPaddings.a16(),
    this.margin,
  }) : backgroundColor = AppColors.background;

  const AMCCard.card2({
    super.key,
    this.child,
    this.backgroundColor = AppColors.card2BgColor,
    this.borderRadius = 8.0,
    this.padding = const AMCPaddings.a16(),
    this.margin,
  }) : borderColor = null;

  const AMCCard.card3({
    super.key,
    this.child,
    this.backgroundColor = AppColors.card3BgColor,
    this.borderRadius = 8.0,
    this.padding = const AMCPaddings.a16(),
    this.margin,
  }) : borderColor = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: borderColor != null ? Border.all(color: borderColor!) : null,
      ),
      child: child,
    );
  }
}
