import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kcPrimaryColor = Color(0xFF1F3D99);
const Color kcTextColor = Color(0xff1E1E1E);
const Color kcTextDescriptionColor = Color(0xffA5A5A5);
// const Color kcPrimaryColorDark = Color(0xFF300151);
// const Color kcDarkGreyColor = Color(0xFF1A1B1E);
// const Color kcMediumGrey = Color(0xFF474A54);
// const Color kcLightGrey = Color.fromARGB(255, 187, 187, 187);
// const Color kcVeryLightGrey = Color(0xFFE3E3E3);
// const Color kcBackgroundColor = kcDarkGreyColor;

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: kcPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: GoogleFonts.dmSans().fontFamily,
      switchTheme: SwitchThemeData(
        trackColor: MaterialStatePropertyAll(
          Colors.grey.withOpacity(0.4),
        ),
      ),
      textTheme: GoogleFonts.dmSansTextTheme().copyWith(
        displayLarge: GoogleFonts.dmSans(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: kcTextColor,
        ),
        displayMedium: GoogleFonts.dmSans(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: kcTextColor,
        ),
        displaySmall: GoogleFonts.dmSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: kcTextColor,
        ),
        bodyLarge: GoogleFonts.dmSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: kcTextColor,
        ),
        bodyMedium: GoogleFonts.dmSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: kcTextColor,
        ),
      ),
      // appBarTheme: AppBarTheme(
      //   color: kcPrimaryColor,
      //   elevation: 0,
      //   titleTextStyle: GoogleFonts.dmSans(
      //     fontSize: 20,
      //     fontWeight: FontWeight.w600,
      //     color: Colors.white,
      //   ),
      //   iconTheme: const IconThemeData(color: Colors.white),
      // ),
      // buttonTheme: ButtonThemeData(
      //   buttonColor: kcPrimaryColor,
      //   textTheme: ButtonTextTheme.primary,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(8),
      //   ),
      // ),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        // OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(8),
        //   borderSide: const BorderSide(color: kcBorderColor),
        // ),
        focusedBorder: InputBorder.none,
        // OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(5),
        //   borderSide: const BorderSide(color: kcSecondaryColor, width: 2),
        // ),
        labelStyle: GoogleFonts.dmSans(color: kcTextColor),
        hintStyle: GoogleFonts.dmSans(color: Colors.grey),
      ),
      colorScheme: const ColorScheme.light(
        primary: kcPrimaryColor,
        // secondary: kcSecondaryColor,
        surface: Colors.white,
        background: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        // onSurface: kcTextColor,
        // onBackground: kcTextColor,
        onError: Colors.white,
        brightness: Brightness.light,
      ),
    );
  }
}
