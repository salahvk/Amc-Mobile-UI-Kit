import 'package:flutter/material.dart';
import 'package:amc_ui_kit/amc_ui_kit.dart';
import 'package:amc_ui_kit/utils/constants.dart';
import 'package:amc_ui_kit/utils/amc_action_bar_type.dart';

class AMCActionBar extends StatelessWidget implements PreferredSizeWidget {
  const AMCActionBar(
      {super.key,
      this.type = AMCActionBarType.iconOnly,
      this.backgroundColor = Colors.white,
      this.actionImage = '$kAssetsIcons/ic_amc_logo.svg',
      this.preferredSize = const Size.fromHeight(kToolbarHeight)})
      : titleText = null,
        label = null;

  const AMCActionBar.custom({
    super.key,
    required this.titleText,
    this.label,
    this.actionImage,
    this.backgroundColor = AppColors.primary,
    this.preferredSize = const Size.fromHeight(146),
  }) : type = AMCActionBarType.custom;

  final AMCActionBarType type;
  final String? titleText;
  final String? label;
  final Color backgroundColor;
  final String? actionImage;
  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AMCActionBarType.iconOnly:
        return AppBar(
          backgroundColor: backgroundColor,
          centerTitle: true,
          title: AppIcon.image(actionImage!),
          automaticallyImplyLeading: false,
        );

      case AMCActionBarType.custom:
        return AppBar(
          backgroundColor: backgroundColor,
          automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: preferredSize.height,
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (label != null) ...[
                  Text(
                    label!,
                    style: AMCTextStyle.paragraph3
                        .copyWith(color: Colors.white)
                        .style,
                  ),
                  AMCSizedBox.h12(),
                ],
                Text(
                  titleText ?? '',
                  style: AMCTextStyle.h3
                      .copyWith(
                        fontWeight: AMCFontWeight.medium500,
                        color: Colors.white,
                      )
                      .style,
                ),
              ],
            ),
          ),
          actions: [
            if (actionImage != null)
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: ClipOval(
                  child: AppIcon(actionImage!, size: 40, fit: BoxFit.cover),
                ),
              ),
          ],
        );
    }
  }
}
