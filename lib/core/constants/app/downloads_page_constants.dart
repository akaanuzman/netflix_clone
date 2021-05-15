class DownloadsPageContants {
  static DownloadsPageContants? _instance;
  static DownloadsPageContants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = DownloadsPageContants.init();
      return _instance!;
    }
  }

  DownloadsPageContants.init();

  final String myDownloads = "My Downloads";
  final String smartDownloads = "Smart Downloads";
  final String onText = "ON";
  final String neverBe = "Never be without Netflix";
  final String content =
      "Download shows and movies so you'll never be without something to watch even when you are offline.";
  final String seeWhat = "See What You Can Download";
}
