import 'package:amc_ui_kit/styles/palette_colors.dart';
import 'package:amc_ui_kit/utils/const/enums.dart';
import 'package:amc_ui_kit/utils/const/layout_config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ShowDialog extends StatelessWidget {
  final String title;
  final String content;
  final String lottieAsset;
  final VoidCallback? onConfirm;
  final String buttonText1;
  final String? buttonText2;
  final EdgeInsetsGeometry? button1padding;
  final EdgeInsetsGeometry? button2padding;
  final Device device;

  const ShowDialog({
    super.key,
    required this.title,
    required this.content,
    required this.lottieAsset,
    this.onConfirm,
    required this.buttonText1,
    this.buttonText2,
    this.button1padding,
    this.button2padding,
    required this.device,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final dialogWidth = MediaQuery.of(context).size.width * 0.6;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: screenWidth >= LayoutConfig.tabletBreakpoint
              ? dialogWidth
              : MediaQuery.of(context).size.width,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Center(
                  child: Lottie.asset(
                    lottieAsset,
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: device == Device.mobile
                      ? PaletteMobile.whiteColor
                      : PaletteTab.whiteColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10.0),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: textTheme.titleMedium?.copyWith(fontSize: 20.0),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      content,
                      style: textTheme.bodySmall?.copyWith(fontSize: 15.0),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (onConfirm != null)
                          ElevatedButton(
                            onPressed: onConfirm,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              shadowColor: Colors.transparent,
                            ),
                            child: Padding(
                              padding:
                                  button1padding ?? const EdgeInsets.all(0),
                              child: Text(
                                buttonText1,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        const SizedBox(width: 15.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: PaletteMobile.background,
                            shadowColor: Colors.transparent,
                          ),
                          child: Padding(
                            padding: button2padding ?? const EdgeInsets.all(0),
                            child: Text(
                              buttonText2 ?? "",
                              style: TextStyle(
                                  color: PaletteMobile.primaryColor(context)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
