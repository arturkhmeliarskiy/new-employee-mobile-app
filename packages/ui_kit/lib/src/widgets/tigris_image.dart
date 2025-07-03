import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TigrisImage extends StatelessWidget {
  final String image;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;

  const TigrisImage({
    required this.image,
    this.color,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return image.endsWith('.svg')
        ? SvgPicture.asset(
            image,
            width: width,
            height: height,
            color: color,
            fit: fit,
          )
        : Image.asset(
            image,
            height: height,
            width: width,
            fit: fit,
          );
  }
}
