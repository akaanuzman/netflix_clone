import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/align/center_left_text.dart';
import '../../../core/components/column/coulmn_icon_text.dart';
import '../../../core/components/container/app_bar_container.dart';
import '../../../core/components/container/image_container.dart';
import '../../../core/components/text/caption_text_copy.dart';
import '../../../core/components/text/headline6_text_copy.dart';
import '../../../core/components/text/subtitle_one_text_copy.dart';
import '../../../core/components/text/white_opacity_text.dart';
import '../../../core/constants/app/coming_soon_page_constants.dart';
import '../../../core/constants/image/image_constants.dart';
import '../../../core/extension/context_extension/context_extension.dart';

class ComingSoonPageView extends StatelessWidget {
  ComingSoonPageConstants get _constants => ComingSoonPageConstants.init();
  ImageConstants get _imageConstants => ImageConstants.init();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: _buildBody(context),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(_constants.title),
      actions: [
        AppBarContainer(),
      ],
    );
  }

  Column _buildBody(BuildContext context) => Column(
        children: [
          Padding(
            padding: context.paddingNormal,
            child: _buildBottomAppBar(context),
          ),
          Column(
            children: _buildListViewBuilder(context),
          )
        ],
      );

  Row _buildBottomAppBar(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            spacing: 15,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(Icons.notifications_none),
              SubtitleOneTextCopy(text: _constants.notifications)
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: context.dynamicWidth(0.045),
          )
        ],
      );

  List<Widget> _buildListViewBuilder(BuildContext context) => List.generate(
        _imageConstants.bannerList.length,
        (index) => Padding(
          padding: context.verticalPaddingNormal,
          child: Column(
            children: [
              _buildImageContainer(context, index),
              context.emptySizedHeightBoxLow3x,
              _constants.duration[index] ? _buildBar(context) : Container(),
              Padding(
                padding: context.horizontalPaddingNormal,
                child: _imageAndColumnIconText(index, context),
              ),
              context.emptySizedHeightBoxLow3x,
              CenterLeftText(
                child: WhiteOpacityText(text: _constants.date[index]),
              ),
              context.emptySizedHeightBoxLow,
              CenterLeftText(
                child: Headline6TextCopy(
                  text: _constants.titleList[index],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CenterLeftText(
                child: WhiteOpacityText(text: _constants.description[index]),
              ),
              context.emptySizedHeightBoxLow,
              CenterLeftText(
                child: CaptionTextCopy(
                  text: _constants.category[index],
                ),
              ),
            ],
          ),
        ),
      );

  Container _buildImageContainer(BuildContext context, int index) => Container(
        height: context.dynamicHeight(0.3),
        child: Stack(
          children: [
            _imageContainer(index),
            _opacityContainer(context),
          ],
        ),
      );

  ImageContainer _imageContainer(int index) => ImageContainer(
        path: _imageConstants.bannerList[index],
        height: 0.3,
      );

  Container _opacityContainer(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: context.blackOpacityColor(0.2),
        ),
      );

  Column _buildBar(BuildContext context) => Column(
        children: [
          Stack(
            children: [
              _loadingBar(context),
              _progressBar(context),
            ],
          ),
        ],
      );

  Container _loadingBar(BuildContext context) => Container(
        height: 2.5,
        color: context.greyOpacityColor(0.7),
      );

  Container _progressBar(BuildContext context) => Container(
        height: 2.5,
        width: context.dynamicWidth(0.34),
        color: context.redOpacityColor(0.7),
      );

  Row _imageAndColumnIconText(int index, BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            _imageConstants.titleList[index],
            width: context.dynamicWidth(0.35),
          ),
          _columnIconText
        ],
      );

  Wrap get _columnIconText => Wrap(
        spacing: 50,
        children: [
          CoulmnIconText(
              icon: Icon(Icons.notifications_outlined),
              text: _constants.remindMe),
          CoulmnIconText(icon: Icon(Icons.info_outline), text: _constants.info)
        ],
      );
}
