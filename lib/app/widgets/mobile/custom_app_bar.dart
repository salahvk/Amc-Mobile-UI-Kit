import 'package:amc_ui_kit/app/styles/palette_colors.dart';
import 'package:amc_ui_kit/app/utils/const/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomMobileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String? svgPath;
  final String title;
  final bool? needBackbutton;
  final void Function()? onTap;
  const CustomMobileAppBar(
      {super.key,
      this.svgPath,
      required this.title,
      this.onTap,
      this.needBackbutton = true});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          needBackbutton == true
              ? GestureDetector(
                  onTap: onTap,
                  child: SvgPicture.asset(
                      height: 24,
                      width: 24,
                      svgPath ?? AppAssets.assetsSvgsBackIcon,
                      fit: BoxFit.contain,
                      color: PaletteMobile.ontertiary(context)),
                )
              : const SizedBox(),
          const SizedBox(
            width: 5,
          ),
          Text(title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: PaletteMobile.ontertiary(context))),
        ],
      ),
    );
  }
}
