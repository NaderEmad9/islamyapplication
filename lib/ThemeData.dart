import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:islamyapplication/AppColors.dart';

class MyThemeData {
  static final ThemeData darkMode = ThemeData(
      primaryColor: AppColors.primaryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.primaryDarkColor,
        selectedIconTheme: IconThemeData(color: AppColors.whiteDarkColor),
        unselectedIconTheme: IconThemeData(color: AppColors.selectedDarkColor),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: AppColors.whiteDarkColor,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ));
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryLightColor,
      selectedIconTheme: IconThemeData(color: AppColors.blackColor),
      unselectedIconTheme: IconThemeData(color: AppColors.whiteLightColor),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
