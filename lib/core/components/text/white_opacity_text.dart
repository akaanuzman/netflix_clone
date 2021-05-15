import 'package:flutter/material.dart';
import 'package:netflix_clone/core/extension/context_extension/context_extension.dart';

class WhiteOpacityText extends StatelessWidget {
  final String text;

  const WhiteOpacityText({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: context.whiteOpacityColor(0.5),
      ),
    );
  }
}
