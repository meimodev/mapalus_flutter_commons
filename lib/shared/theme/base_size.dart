import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseSize {
  // [INFO]
  // Sizes that related with width
  static final w2 = 2.0.w;
  static final w4 = 4.0.w;
  static final w8 = 8.0.w;
  static final w12 = 12.0.w;
  static final w16 = 16.0.w;
  static final w20 = 20.0.w;
  static final w24 = 24.0.w;
  static final w28 = 28.0.w;
  static final w32 = 32.0.w;
  static final w36 = 36.0.w;
  static final w40 = 40.0.w;
  static final w48 = 48.0.w;
  static final w52 = 52.0.w;
  static final w56 = 56.0.w;
  static final w64 = 64.0.w;
  static final w72 = 72.0.w;
  static final w80 = 80.0.w;
  static final w96 = 96.0.w;
  static final w6 = 6.0.w;
  static var w3 = 3.0.w;


  // [INFO]
  // Sizes that related with height
  static final h4 = 4.0.h;
  static final h8 = 8.0.h;
  static final h12 = 12.0.h;
  static final h16 = 16.0.h;
  static final h18 = 18.0.h;
  static final h20 = 20.0.h;
  static final h24 = 24.0.h;
  static final h28 = 28.0.h;
  static final h32 = 32.0.h;
  static final h36 = 36.0.h;
  static final h40 = 40.0.h;
  static final h48 = 48.0.h;
  static final h52 = 52.0.h;
  static final h56 = 56.0.h;
  static final h64 = 64.0.h;
  static final h72 = 72.0.h;
  static final h80 = 80.0.h;
  static final h96 = 96.0.h;
  static final h6 = 6.0.h;


  // [INFO]
  // Sizes that related with radius
  static final radiusSm = 6.r;
  static final radiusMd = 12.r;
  static final radiusLg = 24.r;


  /// [INFO]
  /// Sizes for custom width or height outside the 8 pixel rules
  static customWidth(double value) => value.w;

  static customHeight(double value) => value.h;

  static customRadius(double value) => value.r;

  static customFontSize(double value) => value.sp;

  static double roundnessSmall = 6.r;
  static double roundnessMedium = 12.r;
  static double roundnessBold = 24.r;
}
