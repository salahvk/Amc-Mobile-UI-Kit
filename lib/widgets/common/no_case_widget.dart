import 'package:amc_ui_kit/styles/palette_colors.dart';
import 'package:amc_ui_kit/utils/const/assets.dart';
import 'package:amc_ui_kit/utils/const/enums.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class NoCaseWidget extends StatelessWidget {
  const NoCaseWidget({super.key, required this.device, this.message});
  final Device device;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          AppAssets.assetsLottieNoCase,
          height: 200,
          width: 200,
          fit: BoxFit.fill,
          delegates: LottieDelegates(
            values: [
              ValueDelegate.color(
                ['**'],
                value: device == Device.mobile
                    ? PaletteMobile.primaryColor(context)
                    : PaletteTab.primaryColor(context),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -50),
          child: Text(message ?? "No Case",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(
                    color: device == Device.mobile
                        ? PaletteMobile.primaryColor(context)
                        : PaletteTab.primaryColor(context),
                  )
                  .copyWith(fontSize: 16.0)),
        ),
      ],
    );
  }
}
