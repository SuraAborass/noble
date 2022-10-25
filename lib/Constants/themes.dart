import 'package:flutter/material.dart';
import 'package:noble/Constants/colors.dart';
import '/Constants/font_styles.dart';

class AppThemes {

  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.lightwhite,
    backgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyLarge: bodyLarge.apply(color: AppColors.blue),
      bodyMedium: bodyMedium,
      bodySmall: bodySmall,
      headlineLarge: headlineLarge.apply(color: AppColors.grey),
      headlineMedium: headlineMedium.apply(color: AppColors.grey),
      headlineSmall: headlineSmall.apply(color: AppColors.grey),
      titleLarge: titleLarge.apply(color: AppColors.blue),
      titleMedium: titleMedium,
      titleSmall: titleSmall,
      displayLarge: displayLarge.apply(color: AppColors.blue3),
      displayMedium: displayMedium.apply(color: AppColors.grey),
      displaySmall: displaySmall,

    ),
  );


  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
  buttonColor: AppColors.blue2,
  bottomAppBarColor: AppColors.blue2,
    appBarTheme: const AppBarTheme(
      color: AppColors.grey,
      titleTextStyle: titleLarge,
      iconTheme: IconThemeData(color: AppColors.blue2),
    ),

    textTheme:  TextTheme(
      bodyLarge: bodyLarge.apply(color: AppColors.lightwhite),
      bodyMedium: bodyMedium.apply(color: AppColors.grey),
      bodySmall: bodySmall.apply(color: AppColors.lightwhite ),
      headlineLarge: headlineLarge.apply(color: AppColors.blue3),
      headlineMedium: headlineMedium.apply(color: AppColors.grey),
      headlineSmall: headlineSmall.apply(color: AppColors.grey),
      titleLarge: titleLarge.apply(color: AppColors.grey),
      titleMedium: titleMedium.apply(color: AppColors.grey) ,
      titleSmall: titleSmall.apply(color: AppColors.grey),
      displayLarge: displayLarge.apply(color: AppColors.blue3),
      displayMedium: displayMedium.apply(color:AppColors.lightwhite),
      displaySmall: displaySmall.apply(color:AppColors.blue3) ,

    ),
  );


}