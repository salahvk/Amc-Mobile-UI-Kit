import 'package:flutter/material.dart';

class AmcLoader extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final Color? color;
  const AmcLoader(
      {super.key, required this.image, this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: height,
      width: width,
      color: color,
    );
  }
}
