import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../text/headline6_text_copy.dart';

class PaddingHeadline6Text extends StatelessWidget {
  final String data;

  const PaddingHeadline6Text({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Headline6TextCopy(text: data),
    );
  }
}
