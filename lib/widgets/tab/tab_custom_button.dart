import 'package:amc_ui_kit/styles/palette_colors.dart';
import 'package:amc_ui_kit/utils/const/assets.dart';
import 'package:amc_ui_kit/utils/const/enums.dart';
import 'package:amc_ui_kit/widgets/common/image_type_switcher.dart';
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String label;
  final Color? bgColor;
  final EdgeInsets padding;
  final Function onTap;
  final bool? isLoading;
  final Color? textColor;
  final Color? loadingColor;
  const TabButton(
      {super.key,
      required this.label,
      this.bgColor,
      required this.onTap,
      this.isLoading = false,
      this.padding = const EdgeInsets.all(16.0),
      this.textColor,
      this.loadingColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: bgColor,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        child: Padding(
            padding: padding,
            child: isLoading == true
                ? Center(
                    child: ImageTypeSwitcher(
                      color: loadingColor ?? PaletteTab.whiteColor,
                      height: 14.5,
                      imageType: ImageType.assetsImage,
                      image: AppAssets.assetsGifsSpinningLoader,
                    ),
                  )
                : Text(
                    label,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: textColor ?? PaletteTab.whiteColor,
                        ),
                  )),
        onTap: () => onTap(),
      ),
    );
  }
}
