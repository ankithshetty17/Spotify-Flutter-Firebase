import 'package:flutter/material.dart';
import 'package:spotify/core/config/theme/app_colors.dart';

class AppTheme {
  //Light Theme
  static final lightTheme =  ThemeData(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.lightBackground,
  brightness: Brightness.light,
  fontFamily: 'Satoshi',
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    contentPadding: EdgeInsets.all(25),
    hintStyle: TextStyle(
      fontWeight: FontWeight.w500,
      color: Color(0xffA7A7A7)
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(
        color: Colors.black,
        width: 0.4
      )
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
      foregroundColor: const Color.fromARGB(255, 22, 17, 17),
      textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      )
    )
  )
  );

  //Dark Theme
  static final darkTheme =  ThemeData(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.darkBackground,
  brightness: Brightness.dark,
  fontFamily: 'Satoshi',
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    contentPadding: EdgeInsets.all(25),
     hintStyle: TextStyle(
      fontWeight: FontWeight.w500,
      color: Color(0xff383838)
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(
        color: Colors.white,
        width: 0.4
      )
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.lightBackground,
      textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      )
    )
  )
  );
}