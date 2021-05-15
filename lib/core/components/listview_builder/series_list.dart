import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../container/image_container.dart';

class ListViewBuilderSeries extends StatelessWidget {
  final int count;
  final List<String> path;

  const ListViewBuilderSeries(
      {Key? key, required this.count, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: context.paddingLow,
        child: ImageContainer(
          width: context.dynamicWidth(0.27),
          path: path[index],
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
