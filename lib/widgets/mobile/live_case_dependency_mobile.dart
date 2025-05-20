import 'package:amc_ui_kit/styles/palette_colors.dart';
import 'package:amc_ui_kit/utils/const/enums.dart';
import 'package:amc_ui_kit/widgets/common/image_type_switcher.dart';
import 'package:flutter/material.dart';

class LiveCaseDependencyItemMobile extends StatelessWidget {
  const LiveCaseDependencyItemMobile({
    super.key,
    required this.title,
    required this.value,
    required this.imageType,
    required this.icon,
  });
  final String title;
  final String value;
  final ImageType imageType;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageTypeSwitcher(
              imageType: imageType,
              image: icon,
              height: 21,
              width: 21,
              color: PaletteMobile.primaryColor(context),
            ),
            Text(
              title,
              style: textTheme.bodySmall
                  ?.copyWith(color: PaletteMobile.ontertiary(context)),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(value,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyMedium?.copyWith(
                    fontSize: 14, color: PaletteMobile.ontertiary(context))),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
