import 'package:stacked/stacked.dart';
import 'package:test_task/app/app.locator.dart';
import 'package:test_task/core/services/language_service.dart';

class DriversLicenseModel extends ReactiveViewModel {
  final LanguageChangeService _languageService =
      locator<LanguageChangeService>();
  LanguageChangeService get languageService => _languageService;

  int _currentIndex = 0; // Track the current index
  int get currentIndex => _currentIndex;
  void onIndexChanged(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_languageService];
}
