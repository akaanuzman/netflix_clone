class SearchPageConstants {
  static SearchPageConstants? _instance;
  static SearchPageConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = SearchPageConstants.init();
      return _instance!;
    }
  }

  SearchPageConstants.init();

  final String search = "Search";
  final String topSearches = "Top Searches";
  final List<String> titleList = [
    "Age of Samurai: Battle for Japan",
    "Aquaman",
    "Animals on the Loose: A You vs. Wild Movie",
    "Tribes of Europa",
    "The Yin-Yang Master: Dream Of Eternity",
    "Space Sweepers",
    "Fate: The Winx Saga",
  ];
}
