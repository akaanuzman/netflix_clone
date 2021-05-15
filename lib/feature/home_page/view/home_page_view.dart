import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/button/play_button.dart';
import '../../../core/components/column/coulmn_icon_text.dart';
import '../../../core/components/container/app_bar_container.dart';
import '../../../core/components/container/image_container.dart';
import '../../../core/components/container/linear_gradient_container.dart';
import '../../../core/components/container/series_container.dart';
import '../../../core/components/padding/padding_headline6_text.dart';
import '../../../core/components/text/caption_text_copy.dart';
import '../../../core/components/text/subtitle_one_text_copy.dart';
import '../../../core/constants/app/home_page_constants.dart';
import '../../../core/constants/image/image_constants.dart';
import '../../../core/extension/context_extension/context_extension.dart';

class HomePageView extends StatelessWidget {
  HomePageConstants get _constants => HomePageConstants.init();
  ImageConstants get _imageConstants => ImageConstants.init();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildBody(context),
    );
  }

  Padding _buildBody(BuildContext context) => Padding(
        padding: context.paddingLow,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              _allScreen(context),
              _appBarColumn(context),
            ],
          ),
        ),
      );

  Container _allScreen(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width - 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _topStack(context),
            _midIcon(context),
            _seriesList(context)
          ],
        ),
      );

  Stack _topStack(BuildContext context) => Stack(
        children: [
          _backgroundImage,
          _gradientBackgroundPicture(context),
          _seriesImageAndText(context)
        ],
      );

  ImageContainer get _backgroundImage => ImageContainer(
        height: 0.65,
        path: _imageConstants.banner,
        fit: BoxFit.cover,
      );

  LinearGradientContainer _gradientBackgroundPicture(BuildContext context) =>
      LinearGradientContainer(
        height: context.dynamicHeight(0.65),
        colors: [
          context.blackOpacityColor(0.85),
          context.blackOpacityColor(0),
        ],
      );

  Container _seriesImageAndText(BuildContext context) => Container(
        height: context.dynamicHeight(0.65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: context.horizontalPaddingMedium,
              child: ImageContainer(
                  height: context.dynamicHeight(0.00025),
                  path: _imageConstants.title,
                  fit: BoxFit.contain),
            ),
            CaptionTextCopy(
              text: _constants.sciFi,
            ),
          ],
        ),
      );

  Padding _midIcon(BuildContext context) => Padding(
        padding: context.verticalPaddingNormal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CoulmnIconText(
              icon: Icon(Icons.add),
              text: _constants.myList,
            ),
            PlayButtonView(
                color: context.whiteColor,
                iconColor: context.blackColor,
                iconSize: 40,
                radius: context.lowBorderRadius,
                sizedBox: context.emptySizedWidthBoxLow),
            CoulmnIconText(
                icon: Icon(Icons.info_outline), text: _constants.info)
          ],
        ),
      );

  Column _seriesList(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PaddingHeadline6Text(data: _constants.myList),
          SeriesContainer(
              height: context.dynamicHeight(0.22),
              count: _imageConstants.myList.length,
              path: _imageConstants.myList),
          context.emptySizedHeightBoxLow,
          PaddingHeadline6Text(data: _constants.popular),
          SeriesContainer(
              height: context.dynamicHeight(0.22),
              count: _imageConstants.popularList.length,
              path: _imageConstants.popularList),
          context.emptySizedHeightBoxLow,
          PaddingHeadline6Text(data: _constants.trending),
          SeriesContainer(
              height: context.dynamicHeight(0.22),
              count: _imageConstants.trendingList.length,
              path: _imageConstants.trendingList),
          context.emptySizedHeightBoxLow,
          PaddingHeadline6Text(data: _constants.originals),
          SeriesContainer(
              height: context.dynamicHeight(0.3),
              count: _imageConstants.originalList.length,
              path: _imageConstants.originalList),
          context.emptySizedHeightBoxLow,
          PaddingHeadline6Text(data: _constants.forYou),
          SeriesContainer(
              height: context.dynamicHeight(0.22),
              count: _imageConstants.forYouList.length,
              path: _imageConstants.forYouList)
        ],
      );

  Widget _appBarColumn(BuildContext context) => Column(
        children: [
          context.emptySizedHeightBoxLow,
          _appBar(context),
          _appBarTitles(context),
        ],
      );

  Widget _appBar(BuildContext context) => Padding(
        padding: context.verticalPaddingNormal,
        child: AppBarContainer(
          child: Image.asset(
            _imageConstants.logo,
            width: context.dynamicWidth(0.07),
          ),
        ),
      );

  Widget _appBarTitles(BuildContext context) => Container(
        height: context.dynamicHeight(0.05),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SubtitleOneTextCopy(text: _constants.tvShows),
              SubtitleOneTextCopy(text: _constants.movies),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 3,
                children: [
                  SubtitleOneTextCopy(text: _constants.categories),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ],
          ),
        ),
      );
}
