import 'package:flutter/material.dart';

class Headline6TextCopy extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;

  const Headline6TextCopy(
      {Key? key, required this.text, this.color, this.fontWeight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6!.copyWith(
          color: color ?? Theme.of(context).iconTheme.color,
          fontWeight: fontWeight ?? FontWeight.w500),
    );
  }
}
