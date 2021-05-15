import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/constants/app/tabbar_constants.dart';
import '../../../core/extension/context_extension/context_extension.dart';
import '../../../core/init/icon/app_icons.dart';
import '../../coming_soon_page/view/coming_soon_view.dart';
import '../../downloads_page/view/downloads_page_view.dart';
import '../../home_page/view/home_page_view.dart';
import '../../search_page/view/search_page_view.dart';
import '../model/tab_model.dart';

TabBarConstants get _constants => TabBarConstants.init();
AppIcon get _icons => AppIcon.init();

class AppTabBar extends StatelessWidget {
  final List<TabModel> _tabsItem = [
    TabModel(
        title: _constants.home, icon: _icons.items[0], child: HomePageView()),
    TabModel(
        title: _constants.comingSoon,
        icon: _icons.items[1],
        child: ComingSoonPageView()),
    TabModel(
        title: _constants.search,
        icon: _icons.items[2],
        child: SearchPageView()),
    TabModel(
        title: _constants.downloads,
        icon: _icons.items[3],
        child: DownloadPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabsItem.length,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: _buildTabBar(context),
        ),
        body: _buildTabBarView,
      ),
    );
  }

  Widget _buildTabBar(BuildContext context) => Container(
        color: context.blackColor,
        child: TabBar(
          labelPadding: context.horizontalPaddingLow,
          tabs: List.generate(
            _tabsItem.length,
            (index) => Tab(
              text: _tabsItem[index].title,
              icon: Icon(_tabsItem[index].icon),
            ),
          ),
        ),
      );

  TabBarView get _buildTabBarView =>
      TabBarView(children: _tabsItem.map((e) => e.child).toList());
}
