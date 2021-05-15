class ComingSoonPageConstants {
  static ComingSoonPageConstants? _instance;
  static ComingSoonPageConstants get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = ComingSoonPageConstants.init();
      return _instance!;
    }
  }

  ComingSoonPageConstants.init();

  final String title = "Coming Soon";
  final String notifications = "Notifications";
  final String remindMe = "Remind Me";
  final String info = "Info";
  final List<String> date = [
    "Coming Friday",
    "New Episode Coming Saturday",
    "2021 June"
  ];
  final List<String> titleList = ["Sentinelle", "Vincenzo", "Peaky Blinders"];
  final List<String> description = [
    "Considered a fool and unfit to lead, Nobunaga rises to power as the head of the Oda clan, spurring dissent among those in his family vying for control.",
    "During a visit to his motherland, a Korean-Italian mafia lawyer gives an unrivaled conglomerate a taste of its own medicine with a side of justice.",
    "A notorious gang in 1919 Birmingham, England, is led by the fierce Tommy Shelby, a crime boss set on moving up in the world no matter the cost.",
  ];
  final List<String> category = [
    "Gritty - Dark - Action Thriller - Action & Adventure - Drama",
    "Gritty - Dark - Action Thriller - Action & Adventure - Drama",
    "Violence, Sex, Nudity, Language, Substances",
  ];
  final List<bool> duration = [true, false, false];
}
