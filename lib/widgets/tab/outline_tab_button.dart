import 'package:amc_ui_kit/styles/palette_colors.dart';
import 'package:flutter/material.dart';

class OutlineTabButton extends StatelessWidget {
  const OutlineTabButton({
    super.key,
    required this.label,
    this.onTap,
  });
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: PaletteTab.primaryColor(context), width: 1.6),
      ),
      color: PaletteTab.background,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: PaletteTab.primaryColor(context),
                ),
          ),
        ),
      ),
    );
  }
}
