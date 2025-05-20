import 'package:amc_ui_kit/app/styles/palette_colors.dart';
import 'package:amc_ui_kit/app/utils/extension/theme_extension.dart';
import 'package:amc_ui_kit/app/widgets/common/sizedbox_function.dart';
import 'package:flutter/material.dart';
class NotificationCard extends StatelessWidget {
  const NotificationCard(
      {super.key,
      required this.date,
      required this.heading,
      required this.notification,
      this.onTap});

  final String heading;
  final String notification;
  final String date;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            boxShadow:  [
              BoxShadow(
                color: PaletteMobile.lightGrey2,
                offset: Offset(0, 2),
                blurRadius: 20,
                spreadRadius: -10,
              ),
            ],
            color: PaletteMobile.whiteColor,
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            addVerticalSpace(8),
            Row(
              children: [
                addHorizontalSpace(10),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style:
                          context.textTheme.bodyMedium?.copyWith(fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      notification,
                      style:
                          context.textTheme.bodySmall?.copyWith(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      date,
                      style: context.textTheme.bodySmall?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: PaletteMobile.commonGrey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ))
              ],
            ),
            addVerticalSpace(5),
          ],
        ),
      ),
    );
  }
}
