import 'package:flutter/material.dart';

import 'IAppTheme.dart';

class AppTheme extends IAppTheme {
  static AppTheme? _instance;
  static AppTheme get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = AppTheme.init();
      return _instance!;
    }
  }

  AppTheme.init();

  @override
  ThemeData get theme => ThemeData(
      scaffoldBackgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white.withOpacity(0.9)),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.white,
      ),
      indicatorColor: Colors.white,
      appBarTheme: AppBarTheme(backgroundColor: Colors.black),
      primaryColor: Colors.red,
      accentColor: Colors.white,
      backgroundColor: Colors.blue);
}
