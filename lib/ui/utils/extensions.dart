import 'package:flutter/material.dart';

//Getters for ui padding
extension EdgeInsetsExtension on EdgeInsets {
  static EdgeInsets fromPercentage({
    required double lefthorizontalPercentage,
    required double righthorizontalPercentage,
    required double topverticalPercentage,
    required double bottomverticalPercentage,
    Size referenceSize = const Size(375, 812),
    required BuildContext context,
  }) {
    return EdgeInsets.only(
      left: lefthorizontalPercentage /
          referenceSize.width *
          MediaQuery.sizeOf(context).width,
      right: righthorizontalPercentage /
          referenceSize.width *
          MediaQuery.sizeOf(context).width,
      top: topverticalPercentage /
          referenceSize.height *
          MediaQuery.sizeOf(context).height,
      bottom: bottomverticalPercentage /
          referenceSize.height *
          MediaQuery.sizeOf(context).height,
    );
  }
}

//Getters for MediaQuery.of(context)
extension MediaQueryShortcut on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

//Getters for styles
extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;

  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;

  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;
}
