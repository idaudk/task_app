import 'package:flutter/material.dart';

Map<int, Color> primarycolor = {
  50: Color(0xFFF9F6FD),
  100: Color(0xFFF3ECFA),
  200: Color(0xFFDFCEF1),
  300: Color(0xFFCBAEE8),
  400: Color(0xFFA675D7),
  500: Color(0xFF7F39C5),
  600: Color(0xFF7233B0),
  700: Color(0xFF4D2377),
  800: Color(0xFF3A1A59),
  900: Color(0xFF25113A),
};

class AppBasicTheme {
  final primaryColor = Color(0xFF00818A);
  final primaryColorLight = Color(0xFF216583);
  final primaryColorDark = Color(0xFF293462);
  final backgroundColor = Color(0xFF293462);
  final supportColor = Color.fromARGB(255, 45, 60, 119);

  static ThemeData getThemeData() {
    return ThemeData(
      fontFamily: 'Manrope',
      primaryColor: AppBasicTheme().primaryColor,
      primarySwatch: MaterialColor(0xFF293462, primarycolor),
      textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.grey[800]),
      ),
      // appBarTheme: const AppBarTheme(
      //   backgroundColor: Color(0xFF293462),
      //   elevation: 0,
      // ),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: AppBasicTheme().primaryColor),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey[200],
        errorStyle: const TextStyle(),
        errorMaxLines: 1,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(30),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: AppBasicTheme().primaryColor,
          onPrimary: Colors.white,
          textStyle: TextStyle(color: Colors.white),
          minimumSize: const Size(double.infinity, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
      ),
    );
  }
}
