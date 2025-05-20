import 'package:amc_ui_kit/app/styles/palette_colors.dart';
import 'package:amc_ui_kit/app/widgets/mobile/shimmers/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DropDownShimmer extends StatelessWidget {
  const DropDownShimmer({super.key, this.label});

  final String? label;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          label != null
              ? Shimmer.fromColors(
                  baseColor: Colors.black.withOpacity(1),
                  highlightColor: Colors.grey,
                  child: Row(
                    children: [
                      Text(
                        label ?? "",
                        style: textTheme.titleMedium?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: PaletteMobile.whiteColor,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    color: PaletteMobile.primaryColor(context), width: 0.8)),
            child: Shimmer.fromColors(
                baseColor: Colors.black.withOpacity(1),
                highlightColor: Colors.grey,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Skeleton(),
                )),
          ),
        ],
      ),
    );
  }
}
