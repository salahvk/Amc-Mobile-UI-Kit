import 'package:amc_ui_kit/styles/palette_colors.dart';
import 'package:amc_ui_kit/widgets/common/amc_sized_box.dart';
import 'package:flutter/material.dart';

class CaseItemTab extends StatelessWidget {
  final String title;
  final String subTitle;
  final String leadingIcon;
  final double iconSize;
  const CaseItemTab({
    super.key,
    required this.title,
    required this.subTitle,
    required this.leadingIcon,
    this.iconSize = 24,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/$leadingIcon',
              width: iconSize,
              height: iconSize,
              color: PaletteTab.primaryColor(context),
            ),
            const AMCSizedBox.w12(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const AMCSizedBox.h4(),
                  Text(
                    subTitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500, fontSize: 14),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
