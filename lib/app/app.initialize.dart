import 'package:flutter/material.dart';
import 'package:test_task/app/app.locator.dart';

class AppSetup {
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    setupLocator();
  }
}
