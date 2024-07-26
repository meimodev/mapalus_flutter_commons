import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'theme.dart';

const String fontFamily = 'Poppins';
final ThemeData appThemeData = ThemeData.light().copyWith(
  primaryColor: BaseColor.primary3,
  // scaffoldBackgroundColor: BaseColor.scaffold,
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w300,
      color: BaseColor.primaryText,
    ),
    counterStyle: TextStyle(
      fontFamily: fontFamily,
      fontSize: 9.sp,
      fontWeight: FontWeight.w400,
      color: BaseColor.primaryText,
    ),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: BaseColor.primary3,
      ),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
  ),
  textTheme: TextTheme(
    displayLarge: BaseTypography.displayLarge,
    displayMedium: BaseTypography.displayMedium,
    displaySmall: BaseTypography.displaySmall,
    headlineMedium: BaseTypography.headlineMedium,
    headlineSmall: BaseTypography.headlineSmall,
    titleLarge: BaseTypography.titleLarge,
    bodyLarge: BaseTypography.bodyLarge,
    bodyMedium: BaseTypography.bodyMedium,
    bodySmall: BaseTypography.bodySmall,
  ),
);
