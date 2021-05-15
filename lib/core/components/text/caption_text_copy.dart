import 'package:flutter/material.dart';

class CaptionTextCopy extends StatelessWidget {
  final String text;

  const CaptionTextCopy({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .caption!
          .copyWith(color: Theme.of(context).iconTheme.color),
    );
  }
}
