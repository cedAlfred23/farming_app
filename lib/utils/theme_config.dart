import 'package:farming_app/utils/color_config.dart';
import 'package:farming_app/utils/styles_config.dart';
import 'package:flutter/material.dart';

class ITheme {
  static ThemeData get lightMode => ThemeData(
        useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: h4BlackText,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(35),
              ),
            ),
            side: const BorderSide(color: GREY),
          ),
        ),
        textTheme: TextTheme(
            titleLarge: h3BoldBlackText,
            titleMedium: h4BoldBlackText,
            titleSmall: h5BoldBlackText,
            bodyLarge: h3BlackText,
            bodyMedium: h4BlackText,
            bodySmall: h5BlackText),
        scaffoldBackgroundColor: FILLEDCOLOR,
        primaryColor: PRIMARYCOLOR,
        disabledColor: ASHDEEP,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: PRIMARYCOLOR,
          onPrimary: WHITE,
          secondary: PRIMARYCOLOR,
          onSecondary: PRIMARYCOLOR,
          error: PRIMARYCOLOR,
          onError: PRIMARYCOLOR,
          background: WHITE,
          onBackground: BLACK,
          surface: WHITE,
          onSurface: BLACK,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: FILLEDCOLOR,
          elevation: .0,
          scrolledUnderElevation: 0,
          centerTitle: false,
          shadowColor: WHITE,
          iconTheme: const IconThemeData(color: BLACK),
          actionsIconTheme: const IconThemeData(color: BLACK),
          titleTextStyle: h3BlackText,
        ),
        iconTheme: const IconThemeData(color: BLACK),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: PRIMARYCOLOR,
          foregroundColor: BLACK,
        ),
      );

  static ThemeData get darkMode => ThemeData(
        useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: h4BlackText,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(35),
              ),
            ),
            side: const BorderSide(color: GREY),
          ),
        ),
        textTheme: TextTheme(
          titleLarge: h3BoldWhiteText,
          titleMedium: h4BoldWhiteText,
          titleSmall: h5BoldWhiteText,
          bodyLarge: h3WhiteText,
          bodyMedium: h4WhiteText,
          bodySmall: h5WhiteText,
        ),
        scaffoldBackgroundColor: BLACK2,
        primaryColor: DEEPYELLOW,
        disabledColor: ASHDEEP,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: DEEPYELLOW,
          onPrimary: BLACK,
          secondary: DEEPYELLOW,
          onSecondary: DEEPYELLOW,
          error: DEEPYELLOW,
          onError: DEEPYELLOW,
          background: BLACK3,
          onBackground: WHITE,
          surface: BLACK4,
          onSurface: WHITE,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: BLACK2,
          elevation: .0,
          scrolledUnderElevation: 0,
          centerTitle: false,
          shadowColor: BLACK1,
          iconTheme: const IconThemeData(color: DEEPGREY),
          actionsIconTheme: const IconThemeData(color: DEEPGREY),
          titleTextStyle: h3WhiteText,
        ),
        iconTheme: const IconThemeData(color: GREY),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: DEEPYELLOW,
          foregroundColor: WHITE,
        ),
      );
}

ThemeData datePickerTheme() {
  return ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light(primary: PRIMARYCOLOR),
  );
}
