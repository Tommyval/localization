import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_task/core/services/language_service.dart';
import 'package:test_task/ui/views/drivers_license/drivers_license_view.dart';


@StackedApp(
  routes: [AdaptiveRoute(page: DriversLicenseView, initial: true)],
   dependencies: [
      LazySingleton(classType: NavigationService),
    LazySingleton(classType: LanguageChangeService),
  
   ]
)
class App {}
