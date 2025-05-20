import 'package:amc_ui_kit/styles/palette_colors.dart';
import 'package:flutter/material.dart';

class TabOutlinedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color borderColor;
  final Function onTap;
  final EdgeInsets padding;
  const TabOutlinedButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.textColor = Colors.black,
      this.borderColor = const Color(0x20000000),
      this.padding = const EdgeInsets.all(16.0)});

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: () => onTap(),
        splashColor: PaletteTab.red,
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(width: 1, color: borderColor),
          ),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: textColor),
            ),
          ),
        ),
      );
}
