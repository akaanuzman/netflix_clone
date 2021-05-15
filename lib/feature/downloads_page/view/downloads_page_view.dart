import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/container/app_bar_container.dart';
import '../../../core/components/text/headline6_text_copy.dart';
import '../../../core/components/text/subtitle_one_text_copy.dart';
import '../../../core/constants/app/downloads_page_constants.dart';
import '../../../core/extension/context_extension/context_extension.dart';

class DownloadPage extends StatelessWidget {
  DownloadsPageContants get _constants => DownloadsPageContants.init();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody(context),
    );
  }

  AppBar get _buildAppBar => AppBar(
        title: Text(_constants.myDownloads),
        actions: [AppBarContainer()],
      );

  Column _buildBody(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _topContainer(context),
          Column(
            children: [
              context.emptySizedHeightBoxNormal,
              _circleContainer(context),
              context.emptySizedHeightBoxLow3x,
              _headline6TextCopy,
              context.emptySizedHeightBoxLow3x,
              _midContentText(context),
              context.emptySizedHeightBoxLow3x,
              _bottomContainer(context)
            ],
          ),
          Spacer()
        ],
      );

  Container _topContainer(BuildContext context) => Container(
        height: context.dynamicHeight(0.07),
        color: context.greyOpacityColor(0.2),
        child: Padding(
          padding: context.horizontalPaddingNormal,
          child: _topContainerRow(context),
        ),
      );

  Row _topContainerRow(BuildContext context) => Row(
        children: [
          Icon(Icons.info_outline),
          context.emptySizedWidthBoxLow,
          SubtitleOneTextCopy(text: _constants.smartDownloads),
          SizedBox(
            width: 3,
          ),
          SubtitleOneTextCopy(
            text: _constants.onText,
            color: context.blueColor,
            fontWeight: FontWeight.bold,
          )
        ],
      );

  Container _circleContainer(BuildContext context) => Container(
        height: context.dynamicHeight(0.2),
        width: context.dynamicWidth(0.4),
        decoration: BoxDecoration(
            color: context.greyOpacityColor(0.2), shape: BoxShape.circle),
        child: _downloadIcon(context),
      );

  Center _downloadIcon(BuildContext context) => Center(
        child: Icon(
          Icons.file_download,
          color: context.greyOpacityColor(0.3),
          size: context.dynamicWidth(0.22),
        ),
      );

  Headline6TextCopy get _headline6TextCopy => Headline6TextCopy(
        text: _constants.neverBe,
      );

  Padding _midContentText(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.dynamicWidth(0.18),
        ),
        child: SubtitleOneTextCopy(text: _constants.content, height: 1.4),
      );

  Container _bottomContainer(BuildContext context) => Container(
        height: context.dynamicHeight(0.07),
        width: context.dynamicWidth(0.8),
        color: context.whiteColor,
        child: Center(
          child: Headline6TextCopy(
              text: _constants.seeWhat,
              color: context.blackColor,
              fontWeight: FontWeight.bold),
        ),
      );
}
