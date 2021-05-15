import 'package:flutter/material.dart';

class AppIcon {
  static AppIcon? _instance;
  static AppIcon get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = AppIcon.init();
      return _instance!;
    }
  }

  AppIcon.init();

  List items = [
    // AntDesign.home,
    // AntDesign.playcircleo,
    // AntDesign.search1,
    // AntDesign.download,
    Icons.home,
    Icons.play_circle_outline_outlined,
    Icons.search,
    Icons.download
  ];
}
