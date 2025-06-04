import 'package:amc_ui_kit/model/local/amc_global.dart';
import 'package:amc_ui_kit/styles/get_color.dart';
import 'package:amc_ui_kit/utils/const/assets.dart';
import 'package:amc_ui_kit/utils/getter/get_image_url.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class SafeCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final bool? needLoader;
  final String imageType;
  final AMCGlobal amcGlobal;
  // final String scaffoldBackgroundColor;
  const SafeCachedNetworkImage(
      {super.key,
      required this.imageUrl,
      this.height,
      this.width,
      this.fit,
      this.needLoader = false,
      required this.imageType,
      required this.amcGlobal
      // required this.scaffoldBackgroundColor
      });

  @override
  Widget build(BuildContext context) {
    return imageUrl != ""
        ? imageType == 'svg'
            ? SvgPicture.network(
                height: height,
                width: width,
                getImageUrl(imageUrl, amcGlobal),
                fit: BoxFit.contain,
                placeholderBuilder: (context) => Image.asset(
                    height: height,
                    width: width,
                    AppAssets.assetsImagesNoImage),
              )
            : imageType == 'lottie'
                ? Lottie.network(
                    getImageUrl(imageUrl, amcGlobal),
                    height: height,
                    width: width,
                    fit: fit,
                    errorBuilder: (context, error, stackTrace) =>
                        Image.asset(AppAssets.assetsImagesNoImage),
                  )
                : CachedNetworkImage(
                    fit: fit,
                    height: height,
                    width: width,
                    imageUrl: getImageUrl(imageUrl, amcGlobal),
                    errorWidget: (context, url, error) =>
                        Image.asset(AppAssets.assetsImagesNoImage),
                    progressIndicatorBuilder: needLoader ?? false
                        ? (context, url, progress) => Center(
                          child: CircularProgressIndicator(
                                color: getColor(amcGlobal.firebaseThemeConfig
                                    ?.appTheme?.light?.colorScheme?.primary),
                              ),
                        )
                        : null,
                  )
        : SizedBox(
            height: height,
            width: width,
            child:  Center(
              child: Image.asset(AppAssets.assetsImagesNoImage),
            ),
          );
  }
}
