import 'package:amc_ui_kit/styles/palette_colors.dart';
import 'package:amc_ui_kit/widgets/common/sizedbox_function.dart';
import 'package:amc_ui_kit/widgets/mobile/shimmers/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CaseCardShimmer extends StatelessWidget {
  const CaseCardShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: PaletteMobile.whiteColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.black.withOpacity(1),
        highlightColor: Colors.grey,
        enabled: true,
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(
                  child: Skeleton(
                    height: 40,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Skeleton(
                    height: 25,
                  ),
                  addVerticalSpace(5),
                  const Skeleton(
                    height: 25,
                  ),
                  addVerticalSpace(5),
                  const Skeleton(
                    height: 25,
                  ),
                  addVerticalSpace(5),
                  const Skeleton(
                    height: 25,
                  ),
                  addVerticalSpace(5),
                  const Skeleton(
                    height: 25,
                  ),
                  addVerticalSpace(5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
