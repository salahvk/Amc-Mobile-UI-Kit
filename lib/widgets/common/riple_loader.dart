import 'package:flutter/material.dart';
import 'package:amc_ui_kit/amc_ui_kit.dart';

class RipleLoader extends StatelessWidget {
  final double size;
  final Device device;
  const RipleLoader({super.key, this.size = 40, this.device = Device.tab});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size + 10,
        height: size + 10,
        child: Center(
            child: CircularProgressIndicator(
          color: device == Device.tab
              ? PaletteTab.primaryColor(context)
              : PaletteMobile.primaryColor(context),
        )),
      ),
    );
  }
}
