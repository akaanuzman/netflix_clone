import '../app/app_constants.dart';

class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = ImageConstants.init();
      return _instance!;
    }
  }

  ImageConstants.init();

  // Home Page
  String get logo => _getImagePath("logo.ico");
  String get profilePhoto => _getImagePath("pp.jpg");
  String get banner => _getImagePath("banner.webp");
  String get title => _getImagePath("title_img.webp");
  List<String> get myList => _getMyList;
  List<String> get popularList => _getPopularList;
  List<String> get trendingList => _getTrendingList;
  List<String> get originalList => _getOriginalList;
  List<String> get forYouList => _getForYouList;

  // Coming Soon Page
  List<String> get bannerList => _getBannerList;
  List<String> get titleList => _getTitleList;

  // Search Page
  List<String> get images => _getImageList;

  String _getImagePath(String name) =>
      "${ApplicationConstants.IMAGES_PATH}$name";

  // Home Page
  List<String> get _getMyList {
    List<String> myList = [];
    for (var v = 0; v < 4; v++) {
      String value = "img_${v + 1}.png";
      myList.add("${ApplicationConstants.IMAGES_PATH}$value");
    }
    return myList;
  }

  List<String> get _getPopularList {
    List<String> popularList = [];
    for (var v = 4; v < 8; v++) {
      String value = "img_${v + 1}.png";
      popularList.add("${ApplicationConstants.IMAGES_PATH}$value");
    }
    return popularList;
  }

  List<String> get _getTrendingList {
    List<String> trendingList = [];
    for (var v = 8; v < 12; v++) {
      String value = "img_${v + 1}.png";
      trendingList.add("${ApplicationConstants.IMAGES_PATH}$value");
    }
    return trendingList;
  }

  List<String> get _getOriginalList {
    List<String> originalList = [];
    for (var v = 12; v < 15; v++) {
      String value = "img_${v + 1}.png";
      originalList.add("${ApplicationConstants.IMAGES_PATH}$value");
    }
    return originalList;
  }

  List<String> get _getForYouList {
    List<String> forYouList = [];
    for (var v = 15; v < 19; v++) {
      String value = "img_${v + 1}.png";
      forYouList.add("${ApplicationConstants.IMAGES_PATH}$value");
    }
    return forYouList;
  }

  // Coming Soon Page
  List<String> get _getBannerList {
    List<String> bannerList = [];
    String value = "";
    for (var v = 0; v < 3; v++) {
      v == 0 ? value = "banner.webp" : value = "banner_$v.webp";
      bannerList.add("${ApplicationConstants.IMAGES_PATH}$value");
    }
    return bannerList;
  }

  List<String> get _getTitleList {
    List<String> titleList = [];
    String value = "";
    for (var v = 0; v < 3; v++) {
      v == 0 ? value = "title_img.webp" : value = "title_img_$v.webp";
      titleList.add("${ApplicationConstants.IMAGES_PATH}$value");
    }
    return titleList;
  }

  //Search Page
  List<String> get _getImageList {
    List<String> imageList = [];
    for (var v = 0; v < 7; v++) {
      String value = "search_${v + 1}.jpg";
      imageList.add("${ApplicationConstants.IMAGES_PATH}$value");
    }
    return imageList;
  }
}
