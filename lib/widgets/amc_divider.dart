import 'package:flutter/material.dart';
import 'package:amc_ui_kit/styles/app_colors.dart';

class AMCDivider extends StatelessWidget {
  const AMCDivider({
    super.key,
    this.color = AppColors.divider1,
    this.thickness = 1,
    this.margin,
    this.canExtendFull = false,
  });

  final Color color;
  final double thickness;
  final EdgeInsets? margin;
  final bool canExtendFull;

  @override
  Widget build(BuildContext context) {
    if (canExtendFull) {
      return IntrinsicHeight(
        child: OverflowBox(
          minHeight: thickness,
          maxWidth: MediaQuery.sizeOf(context).width,
          child: _buildDivider(),
        ),
      );
    } else {
      return _buildDivider();
    }
  }

  Widget _buildDivider() {
    return Container(
      color: color,
      height: thickness,
      margin: margin,
    );
  }
}
