import 'package:flutter/material.dart';
import 'package:amc_ui_kit/animations/button_bounce_animation.dart';
import 'package:amc_ui_kit/images/app_icon.dart';
import 'package:amc_ui_kit/styles/app_colors.dart';
import 'package:amc_ui_kit/utils/constants.dart';
import 'package:amc_ui_kit/utils/amc_button_size.dart';
import 'package:amc_ui_kit/utils/amc_button_text.dart';
import 'package:amc_ui_kit/utils/amc_button_type.dart';

class AMCButton extends StatelessWidget {
  const AMCButton({
    super.key,
    this.text = "",
    this.subtext,
    this.icon,
    this.padding,
    this.buttonBgColor,
    this.buttonTextColor,
    this.onPressed,
    this.size = AMCButtonSize.regular,
  }) : _AMCButtonType = AMCButtonType.primary,
  borderColor = null;

  const AMCButton.secondary({
    super.key,
    this.text = "",
    this.subtext,
    this.icon,
    this.padding,
    this.buttonBgColor,
    this.buttonTextColor,
    this.onPressed,
    this.size = AMCButtonSize.regular,
  }) : _AMCButtonType = AMCButtonType.secondary,
  borderColor= null;

  const AMCButton.outlined({
    super.key,
    this.borderColor,
    this.text = "",
    this.subtext,
    this.icon,
    this.padding,
    this.buttonBgColor,
    this.buttonTextColor,
    this.onPressed,
    this.size = AMCButtonSize.regular,
  }) : _AMCButtonType = AMCButtonType.outlined;

  const AMCButton.plain({
    super.key,
    this.text = "",
    this.subtext,
    this.icon,
    this.padding,
    this.buttonBgColor,
    this.buttonTextColor,
    this.onPressed,
    this.size = AMCButtonSize.regular,
  }) : _AMCButtonType = AMCButtonType.plain,
  borderColor = null;

  
    AMCButton.image({
    super.key,
    required String imagePath,  // Requires an image path
    this.borderColor,
    this.buttonBgColor,
    this.padding,
    this.buttonTextColor,
    this.onPressed,
    this.size = AMCButtonSize.regular,
  })  : _AMCButtonType = AMCButtonType.image,
  icon = AppIcon(imagePath,),
        text = "",
        subtext = null;

  final String text;
  final String? subtext;
  final Widget? icon;
  final VoidCallback? onPressed;
  final AMCButtonType _AMCButtonType;
  final AMCButtonSize size;
  final Color? borderColor;
  final Color? buttonBgColor;
  final Color? buttonTextColor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = _getBackgroundColor();
    final Color foregroundColor = _getForegroundColor();

    return ButtonBounceAnimation(
      // OnPressed is handled in Animation only as required to animate according to that
      onPressed: onPressed,
      shouldSupportEnterKey: _AMCButtonType == AMCButtonType.primary,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: size.width,
        constraints: BoxConstraints(
          minHeight: size.height,
        ),
        padding: padding ?? EdgeInsets.symmetric(horizontal: 16, vertical: _getVerticalPadding()),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: _getBorder(),
          borderRadius: BorderRadius.circular(kButtonRadius),
        ),
        child: _buildContent(foregroundColor)
      ),
    );
  }

  /// This is the background color for button
  /// First check is Primary and another Secondary
  Color _getBackgroundColor() {
    switch (_AMCButtonType) {
      case AMCButtonType.primary:
        return buttonBgColor ?? AppColors.buttonBgPrimary;

      case AMCButtonType.secondary:
        return buttonBgColor ?? AppColors.buttonBgSecondary;

      case AMCButtonType.outlined:
        return buttonBgColor ?? AppColors.buttonBgOutlined;

      case AMCButtonType.plain:
        return AppColors.transparent;

        // background colour is same as of outlined
      case AMCButtonType.image:
        return AppColors.buttonBgOutlined;
    }
  }

  /// This is the text/icon color for button
  /// First check is Primary and another Secondary
  Color _getForegroundColor() {
    switch (_AMCButtonType) {
      case AMCButtonType.primary:
        return AppColors.buttonTextPrimary;

      case AMCButtonType.secondary:
        return AppColors.buttonTextSecondary;

      case AMCButtonType.outlined:
        return AppColors.buttonTextOutlined;
        
      case AMCButtonType.plain:
        return AppColors.buttonTextPlain;
        
      case AMCButtonType.image:
        return AppColors.transparent;
    }
  }
  
  _buildContent(Color foregroundColor) {
  if (_AMCButtonType == AMCButtonType.image) {
      return icon ?? const SizedBox();
    }
    return Center(
      child: AMCButtonText(
        text: text,
        color: foregroundColor,
      ),
    );
  }
  
  _getBorder() {
    if (_AMCButtonType == AMCButtonType.outlined) {
      return Border.all(
        color: borderColor ?? AppColors.buttonTextOutlined, // Default to text color
        width: 1,
      );
    }
    if (_AMCButtonType == AMCButtonType.image) {
      return Border.all(
        color: borderColor ?? AppColors.textThree, // Default to grey
        width: 1,
      );
    }
    return null;
  }
  
double _getVerticalPadding() {
  switch (_AMCButtonType) {
    case AMCButtonType.outlined:
      return 8.0;
      case AMCButtonType.image:
      return 10;
    default:
      return 14.0;
  }
}
}
