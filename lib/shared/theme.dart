import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String fontFamily = 'Poppins';
final ThemeData appThemeData = ThemeData.light().copyWith(
  primaryColor: PaletteTheme.accent,
  scaffoldBackgroundColor: PaletteTheme.scaffold,
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w300,
      color: PaletteTheme.textPrimary,
    ),
    counterStyle: TextStyle(
      fontFamily: fontFamily,
      fontSize: 9.sp,
      fontWeight: FontWeight.w400,
      color: PaletteTheme.textPrimary,
    ),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: PaletteTheme.primary,
      ),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
  ),
  textTheme: TextTheme(
    displayLarge: TypographyTheme.displayLarge,
    displayMedium: TypographyTheme.displayMedium,
    displaySmall: TypographyTheme.displaySmall,
    headlineMedium: TypographyTheme.headlineMedium,
    headlineSmall: TypographyTheme.headlineSmall,
    titleLarge: TypographyTheme.titleLarge,
    bodyLarge: TypographyTheme.bodyLarge,
    bodyMedium: TypographyTheme.bodyMedium,
    bodySmall: TypographyTheme.bodySmall,
  ),
);

class TypographyTheme {
  static TextStyle displayLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 36.sp,
    fontWeight: FontWeight.w400,
    color: PaletteTheme.textPrimary,
  );

  static TextStyle displayMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: PaletteTheme.textPrimary,
  );

  static TextStyle displaySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: PaletteTheme.textPrimary,
  );

  static TextStyle headlineMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: PaletteTheme.textPrimary,
  );

  static TextStyle headlineSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: PaletteTheme.textPrimary,
  );

  static TextStyle titleLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: PaletteTheme.textPrimary,
  );

  static TextStyle bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: PaletteTheme.textPrimary,
  );

  static TextStyle bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: PaletteTheme.textPrimary,
  );

  static TextStyle bodySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    color: PaletteTheme.textPrimary,
  );

  static TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: PaletteTheme.textPrimary,
  );

  static TextStyle button = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: PaletteTheme.textPrimary,
  );
}

class PaletteTheme {
  static const Color primary = Color(0xFFFF9800);
  static const Color accent = Color(0xFF2B2E33);

  static const Color cardForeground = Color(0xFFFFFFFF);
  static const Color scaffold = Color(0xFFF8FAFC);

  static const Color positive = Color(0xFF38C672);
  static const Color negative = Color(0xFFC63849);

  static const Color editable = Color(0xFFE7EAF0);

  static const Color notification = Color(0xFFFF0000);

  static const Color textPrimary = accent;
  static const Color textAccent = accent;
}

class Insets {
  static const double small = 12.0;
  static const double medium = 21.0;
  static const double large = 39.0;
}

class Roundness {
  static const double small = 12.0;
  static const double large = 30.0;
}