import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CenterLeftText extends StatelessWidget {
  final Widget child;

  const CenterLeftText({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingNormal,
      child: Align(
        alignment: Alignment.centerLeft,
        child: child,
      ),
    );
  }
}
