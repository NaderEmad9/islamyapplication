import 'package:flutter/material.dart';
<<<<<<<< HEAD:lib/theme_data.dart
import 'package:islamyapplication/app_colors.dart';
========
import 'package:islamyapplication/ui/app_colors.dart';
>>>>>>>> Development:lib/ui/theme_data.dart

class MyThemeData {
  static final ThemeData darkMode = ThemeData(
      primaryColor: AppColors.primaryDarkColor,
      secondaryHeaderColor: AppColors.selectedDarkColor,
      highlightColor: AppColors.darkButtonColor.withOpacity(0.9),
      scaffoldBackgroundColor: Colors.transparent,
      cardTheme: const CardTheme(
        color: AppColors.darkCardColor,
      ),
      iconTheme: const IconThemeData(color: AppColors.whiteDarkColor),
      dividerTheme: const DividerThemeData(
        color: AppColors.selectedDarkColor,
      ),
      appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          foregroundColor: AppColors.selectedDarkColor),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.primaryDarkColor,
        selectedIconTheme: IconThemeData(color: AppColors.selectedDarkColor),
        unselectedIconTheme: IconThemeData(color: AppColors.whiteDarkColor),
        selectedItemColor: AppColors.selectedDarkColor,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: AppColors.whiteDarkColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          color: AppColors.whiteDarkColor,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
        bodySmall: TextStyle(
          color: AppColors.whiteDarkColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          color: AppColors.whiteDarkColor,
          fontFamily: 'Amiri',
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
        headlineLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          shadows: [
            Shadow(
              color: AppColors.blackColor,
              blurRadius: 3,
            ),
          ],
        ),
      ));
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColors.primaryLightColor,
    secondaryHeaderColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    highlightColor: AppColors.whiteLightColor.withOpacity(0.9),
    iconTheme: const IconThemeData(
      color: AppColors.blackColor,
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.primaryLightColor,
    ),
    cardTheme: const CardTheme(
      color: AppColors.lightCardColor,
    ),
    appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        foregroundColor: AppColors.blackColor),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryLightColor,
      selectedIconTheme: IconThemeData(color: AppColors.blackColor),
      unselectedIconTheme: IconThemeData(color: AppColors.whiteLightColor),
      selectedItemColor: AppColors.selectedColor,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        color: AppColors.blackColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: AppColors.blackColor,
        fontFamily: 'Amiri',
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
        color: AppColors.blackColor,
        shadows: [
          Shadow(
            color: AppColors.blackColor,
            blurRadius: 3,
          ),
        ],
      ),
    ),
  );
}
