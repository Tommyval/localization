import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LanguageChangeService with ListenableServiceMixin {
  Locale _locale = const Locale('ru'); // Default language
  Locale get locale => _locale;

  void changeLocale(String languageCode) {
    print(languageCode);
    _locale = Locale(languageCode);
    notifyListeners(); // This will notify the app to rebuild with the new locale
  }

  LanguageChangeService() {
    listenToReactiveValues([_locale]);
  }
}
