import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/container/image_container.dart';
import '../../../core/components/text/headline6_text_copy.dart';
import '../../../core/components/text/subtitle_one_text_copy.dart';
import '../../../core/constants/app/search_page_constants.dart';
import '../../../core/constants/image/image_constants.dart';
import '../../../core/extension/context_extension/context_extension.dart';

class SearchPageView extends StatelessWidget {
  SearchPageConstants get _constants => SearchPageConstants.init();
  ImageConstants get _imageConstants => ImageConstants.init();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: context.paddingNormal,
        child: _buildBody(context),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) => AppBar(
        title: Container(
          height: context.dynamicHeight(0.05),
          decoration: BoxDecoration(
              color: context.greyOpacityColor(0.25),
              borderRadius: context.lowBorderRadius),
          child: _buildTextField(context),
        ),
        actions: [
          Padding(
            padding: context.horizontalPaddingLow,
            child: Icon(Icons.mic_none),
          )
        ],
      );

  TextField _buildTextField(BuildContext context) => TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _constants.search,
          hintStyle: TextStyle(
            color: context.greyOpacityColor(0.5),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: context.greyOpacityColor(0.5),
          ),
        ),
      );

  SingleChildScrollView _buildBody(BuildContext context) =>
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headline6TextCopy(
              text: _constants.topSearches,
            ),
            Column(
              children: _buildListGenerate(context),
            )
          ],
        ),
      );

  List<Widget> _buildListGenerate(BuildContext context) => List.generate(
        _imageConstants.images.length,
        (index) => Padding(
          padding: context.verticalPaddingLow,
          child: Row(
            children: [
              _topSearchesContainer(context, index),
              _playIcon(context)
            ],
          ),
        ),
      );

  Container _topSearchesContainer(BuildContext context, int index) => Container(
        width: context.dynamicWidth(0.73),
        height: context.dynamicHeight(0.1),
        child: Row(
          children: [
            Stack(
              children: [
                _imageContainer(index, context),
                _blackOpacityForImage(context),
              ],
            ),
            context.emptySizedWidthBoxLow,
            _seriesTitle(context, index),
          ],
        ),
      );

  ImageContainer _imageContainer(int index, BuildContext context) =>
      ImageContainer(
        path: _imageConstants.images[index],
        height: 0.3,
        width: context.dynamicWidth(0.3),
        fit: BoxFit.cover,
        borderRadius: context.lowBorderRadius,
      );

  Container _blackOpacityForImage(BuildContext context) => Container(
        width: context.dynamicWidth(0.3),
        height: context.dynamicHeight(0.1),
        color: context.blackOpacityColor(0.2),
      );

  Container _seriesTitle(BuildContext context, int index) => Container(
        width: context.dynamicWidth(0.38),
        height: context.dynamicHeight(0.1),
        alignment: Alignment.centerLeft,
        child: SubtitleOneTextCopy(text: _constants.titleList[index]),
      );

  Container _playIcon(BuildContext context) => Container(
        width: context.dynamicWidth(0.19),
        height: context.dynamicHeight(0.1),
        child: Icon(
          Icons.play_circle_outline_outlined,
          size: context.dynamicWidth(0.1),
        ),
      );
}
