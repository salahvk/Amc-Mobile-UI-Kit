import 'package:amc_ui_kit/app/styles/palette_colors.dart';
import 'package:amc_ui_kit/app/utils/const/enums.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';



class ImageTypeSwitcher extends StatelessWidget {
  final ImageType? imageType;
  final String image;
  final double? height;
  final double? width;
  final Color? color;
  const ImageTypeSwitcher(
      {super.key,
      required this.imageType,
      required this.image,
      this.color,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    switch (imageType) {
      case ImageType.assetsImage:
        return Image.asset(
          image,
          height: height,
          width: width,
          color: color,
        );
      case ImageType.networkImage:
        return CachedNetworkImage(
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: CircularProgressIndicator(
              color: PaletteMobile.primaryColor(context),
            ),
          ),
          imageUrl: image,
          fit: BoxFit.fill,
          width: width,
          height: height,
          color: color,
        );

      case ImageType.assetSvg:
        return SvgPicture.asset(
          height: height,
          width: width,
          image,
          fit: BoxFit.contain,
          colorFilter: color != null
              ? ColorFilter.mode(
                  color ?? Colors.transparent,
                  BlendMode.srcIn,
                )
              : null,
        );

      case ImageType.networkSvg:
        return SvgPicture.network(
          height: height,
          width: width,
          image,
          fit: BoxFit.contain,
          colorFilter: color != null
              ? ColorFilter.mode(
                  color ?? Colors.transparent,
                  BlendMode.srcIn,
                )
              : null,
        );

      case ImageType.assetsLottie:
        return Lottie.asset(
          image,
          width: width,
          height: height,
          repeat: true,
          animate: true,
          filterQuality: FilterQuality.low,
        );
      case ImageType.networkLottie:
        return Lottie.network(
          image,
          width: width,
          height: height,
          repeat: true,
          animate: true,
          filterQuality: FilterQuality.low,
        );

      default:
        return const SizedBox();
    }
  }
}
