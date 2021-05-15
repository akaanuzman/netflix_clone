import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../extension/context_extension/context_extension.dart';

class SubtitleOneTextCopy extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  const SubtitleOneTextCopy(
      {Key? key, required this.text, this.color, this.fontWeight, this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.subtitle1!.copyWith(
          color: color ?? context.whiteColor,
          fontWeight: fontWeight ?? FontWeight.w500,
          height: height ?? 1.2),
    );
  }
}
