class HomePageConstants {
  static HomePageConstants? _instance;
  static HomePageConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = HomePageConstants.init();
      return _instance!;
    }
  }

  HomePageConstants.init();

  final String tvShows = "TV Shows";
  final String movies = "Movies";
  final String categories = "Categories";
  final String sciFi = "Excting - Sci-Fi Drama - Sci-Fi Adventure";
  final String myList = "My List";
  final String play = "Play";
  final String info = "Info";
  final String popular = "Popular on Netflix";
  final String trending = "Trending Now";
  final String originals = "Netflix Originals";
  final String forYou = "For You";
}
