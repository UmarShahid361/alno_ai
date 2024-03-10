import 'package:flutter/material.dart';
import 'package:mvvm_architecture/res/app_colors.dart';


class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColorLight,
    scaffoldBackgroundColor: AppColors.backgroundColorLight,
    appBarTheme: const AppBarTheme(
        color: AppColors.primaryColorLight,
        centerTitle: true
    ),
    textTheme: const TextTheme(
      headlineLarge:  TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryTextColorLight,
      ),
      headlineMedium:  TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryTextColorLight,
      ),
      headlineSmall:  TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryTextColorLight,
      ),
      bodyLarge: TextStyle(
        fontSize: 28,
        color: AppColors.primaryTextColorLight,
      ),
      bodyMedium: TextStyle(
        fontSize: 23,
        color: AppColors.primaryTextColorLight,
      ),
      bodySmall: TextStyle(
        fontSize: 19,
        color: AppColors.primaryTextColorLight,
      ),

    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColorDark,
    scaffoldBackgroundColor: AppColors.backgroundColorDark,
    appBarTheme: const AppBarTheme(
        color: AppColors.primaryColorDark,
        centerTitle: true
    ),
    textTheme: const TextTheme(
      headlineLarge:  TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryTextColorDark,
      ),
      headlineMedium:  TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryTextColorDark,
      ),
      headlineSmall:  TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryTextColorDark,
      ),
      bodyLarge: TextStyle(
        fontSize: 28,
        color: AppColors.primaryTextColorDark,
      ),
      bodyMedium: TextStyle(
        fontSize: 23,
        color: AppColors.primaryTextColorDark,
      ),
      bodySmall: TextStyle(
        fontSize: 19,
        color: AppColors.primaryTextColorDark,
      ),

    ),
  );
}