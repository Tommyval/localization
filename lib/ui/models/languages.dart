class Languages {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Languages(
      {required this.id,
      required this.flag,
      required this.name,
      required this.languageCode});

  static List<Languages> languageList() {
    return <Languages>[
      Languages(id: 1, flag: '🇷🇺', name: 'Russia', languageCode: 'ru'),
      Languages(id: 1, flag: '🇺🇸', name: 'English', languageCode: 'en'),
      Languages(id: 1, flag: '🇸🇦', name: 'Arabic', languageCode: 'ar'),
    ];
  }
}
