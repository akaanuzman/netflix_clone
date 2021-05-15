import 'package:flutter/material.dart';

import 'core/init/theme/app_theme.dart';
import 'feature/tabbar/view/app_tabbar_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.instance.theme,
      debugShowCheckedModeBanner: false,
      home: AppTabBar(),
    );
  }
}
