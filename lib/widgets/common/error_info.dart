import 'package:amc_ui_kit/utils/const/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ErrorInfo extends StatelessWidget {
  final String message;
  final Function onTap;
  final Color color;
  const ErrorInfo(
      {super.key,
      required this.message,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SvgPicture.asset(
            AppAssets.assetsSvgsIcCloudOff,
            width: 88,
            colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          ),
          Text(
            message,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 140,
            child: OutlinedButton(
              child: const Text('Retry'),
              onPressed: () => onTap(),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
