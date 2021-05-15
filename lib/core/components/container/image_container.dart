import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ImageContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final String path;
  final BoxFit? fit;
  final BorderRadius? borderRadius;

  const ImageContainer(
      {Key? key,
      this.height,
      this.width,
      required this.path,
      this.fit,
      this.borderRadius})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(height ?? 0.15),
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(path), fit: fit),
          borderRadius: borderRadius),
    );
  }
}
