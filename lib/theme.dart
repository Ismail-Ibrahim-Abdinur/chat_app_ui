import 'package:chat_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kcontentColorLightTheme),
    // textTheme: GoogleFonts.interTextTheme(
    //   Theme.of(context).textTheme,
    // ).apply(bodyColor: kcontentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: kcontentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kcontentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryColor),
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kcontentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kcontentColorDarkTheme),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kcontentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: kPrimaryColor.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
    ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
