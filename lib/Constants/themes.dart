import 'package:flutter/material.dart';
import 'package:noble/Constants/colors.dart';
import '/Constants/font_styles.dart';

class AppThemes {

  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.lightwhite,
    backgroundColor: Colors.white,
    // textTheme: TextTheme(
      // bodyMedium: TextStyle(color: AppColors.blue2),
      // bodyLarge: heading2Title.apply(color: AppColors.blue),
    // ),
  );


  static final darkTheme = ThemeData.dark().copyWith(
  buttonColor: AppColors.blue2,
  bottomAppBarColor: AppColors.blue2,
    appBarTheme: const AppBarTheme(
      color: AppColors.grey,
      titleTextStyle: TextStyle(color: AppColors.blue2),
      iconTheme: IconThemeData(color: AppColors.blue2),
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: AppColors.lightwhite),),
  );


}