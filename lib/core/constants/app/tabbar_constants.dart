class TabBarConstants {
  static TabBarConstants? _instance;
  static TabBarConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = TabBarConstants.init();
      return _instance!;
    }
  }

  TabBarConstants.init();

  final String home = "Home";
  final String comingSoon = "Coming Soon";
  final String search = "Search";
  final String downloads = "Downloads";
}
