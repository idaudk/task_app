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
  final primaryColor = Color.fromRGBO(208, 218, 83, 1);
  final supportingColorOne = Color(0xFF22A3B0);

  final secondaryColor = Color(0xFFF1d0630);
  final secondartColorTwo = Color(0xFF7F39C5);
  final offwhiteColor = Color(0xFFFfefffe);
  final primarycolorTwo = Color(0xFFF85D26A);
  final greyblue = Color(0xffebf2f8);



  // var primaryColor = Color(0xff0ec874);

  static ThemeData getThemeData() {
    return ThemeData(
      fontFamily: 'Manrope',
      primaryColor: Color.fromRGBO(127, 57, 197, 1),
      primarySwatch: MaterialColor(0xFF0ec874, primarycolor),
      textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.grey[800]),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      progressIndicatorTheme:
      ProgressIndicatorThemeData(color: AppBasicTheme().secondartColorTwo),
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
          primary: AppBasicTheme().secondartColorTwo,
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