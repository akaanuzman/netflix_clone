import 'package:flutter/material.dart';

class LinearGradientContainer extends StatelessWidget {
  final double height;
  final List<Color> colors;

  const LinearGradientContainer(
      {Key? key, required this.height, required this.colors})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
      ),
    );
  }
}
