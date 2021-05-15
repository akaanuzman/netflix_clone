import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  Color get blackColor => theme.scaffoldBackgroundColor;
  Color get blueColor => theme.backgroundColor;
  Color get whiteColor => theme.accentColor;
  Color get redColor => theme.primaryColor;

  Color greyOpacityColor(double opacity) =>
      theme.tabBarTheme.unselectedLabelColor!.withOpacity(opacity);
  Color blackOpacityColor(double opacity) => blackColor.withOpacity(opacity);
  Color whiteOpacityColor(double opacity) => whiteColor.withOpacity(opacity);
  Color redOpacityColor(double opacity) => redColor.withOpacity(opacity);
}
