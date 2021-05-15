import 'package:flutter/material.dart';

import '../text/subtitle_one_text_copy.dart';

class CoulmnIconText extends StatelessWidget {
  final Icon icon;
  final String text;

  const CoulmnIconText({Key? key, required this.icon, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [icon, SubtitleOneTextCopy(text: text)],
    );
  }
}
