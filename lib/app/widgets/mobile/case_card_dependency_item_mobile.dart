import 'package:amc_ui_kit/app/styles/palette_colors.dart';
import 'package:amc_ui_kit/app/utils/const/enums.dart';
import 'package:amc_ui_kit/app/widgets/common/image_type_switcher.dart';
import 'package:amc_ui_kit/app/widgets/common/sizedbox_function.dart';
import 'package:flutter/material.dart';

class CaseCardDependencyItemMobile extends StatelessWidget {
  const CaseCardDependencyItemMobile({
    super.key,
    required this.icon,
    required this.itemName,
    this.needDivider = true,
    required this.imageType,
  });
  final String icon;
  final String itemName;
  final bool needDivider;
  final ImageType imageType;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 8,
      ),
      child: Column(
        children: [
          addVerticalSpace(11.5),
          Row(
            children: [
              ImageTypeSwitcher(
                  height: 15,
                  width: 15,
                  imageType: imageType,
                  color: PaletteMobile.primaryColor(context),
                  image: icon),
              addHorizontalSpace(8.5),
              Expanded(
                child: Text(
                  itemName,
                  style: textTheme.bodySmall?.copyWith(
                      fontSize: 14, color: PaletteMobile.ontertiary(context)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          addVerticalSpace(11),
          needDivider == true
              ? const Divider(
                  height: 1,
                  color: PaletteMobile.commonGrey,
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
