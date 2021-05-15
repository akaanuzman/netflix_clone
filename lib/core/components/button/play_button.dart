import 'package:flutter/material.dart';

import '../../constants/app/home_page_constants.dart';

class PlayButtonView extends StatelessWidget {
  final Color color;
  final Color iconColor;
  final double iconSize;
  final BorderRadius radius;
  final Widget sizedBox;

  HomePageConstants get _constants => HomePageConstants.init();
  const PlayButtonView(
      {Key? key,
      required this.color,
      required this.iconColor,
      required this.iconSize,
      required this.radius,
      required this.sizedBox})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _playButton(context);
  }

  Widget _playButton(BuildContext context) => Container(
        decoration: BoxDecoration(color: color, borderRadius: radius),
        child: Wrap(
          spacing: 5,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [_playIcon, _playText(context), sizedBox],
        ),
      );

  Icon get _playIcon => Icon(
        Icons.play_arrow,
        size: iconSize,
        color: iconColor,
      );

  Text _playText(BuildContext context) => Text(_constants.play,
      style: Theme.of(context)
          .textTheme
          .headline6!
          .copyWith(fontWeight: FontWeight.bold));
}
