import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:test_task/app/app.initialize.dart';
import 'package:test_task/app/app.router.dart';
import 'package:test_task/ui/common/app_colors.dart';
import 'package:test_task/ui/views/drivers_license/drivers_license_view.dart';
import 'package:test_task/ui/views/drivers_license/drivers_license_viewModel.dart';


Future<void> main() async {
  await AppSetup.initialize();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //  LanguageChangeService languageService = locator<LanguageChangeService>();
    return ViewModelBuilder<DriversLicenseModel>.reactive(
      viewModelBuilder: () => DriversLicenseModel(),
      builder: (context, viewModel, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
        //  home: const DriversLicenseView(),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          locale: viewModel.languageService.locale,
        );
      },
    );
  }
}
