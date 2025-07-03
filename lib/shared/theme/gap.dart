import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'theme.dart';

class Gap {
  /// [INFO]
  /// Gaps that related with width
  static final w4 = SizedBox(width: BaseSize.w4);
  static final w8 = SizedBox(width: BaseSize.w8);
  static final w12 = SizedBox(width: BaseSize.w12);
  static final w16 = SizedBox(width: BaseSize.w16);
  static final w20 = SizedBox(width: BaseSize.w20);
  static final w24 = SizedBox(width: BaseSize.w24);
  static final w28 = SizedBox(width: BaseSize.w28);
  static final w32 = SizedBox(width: BaseSize.w32);
  static final w36 = SizedBox(width: BaseSize.w36);
  static final w40 = SizedBox(width: BaseSize.w40);
  static final w48 = SizedBox(width: BaseSize.w48);
  static final w52 = SizedBox(width: BaseSize.w52);
  static final w56 = SizedBox(width: BaseSize.w56);
  static final w64 = SizedBox(width: BaseSize.w64);
  static final w72 = SizedBox(width: BaseSize.w72);
  static final w80 = SizedBox(width: BaseSize.w80);

  static final w3 = SizedBox(width: BaseSize.w3);


  /// [INFO]
  /// Gaps that related with height
  static final h4 = SizedBox(height: BaseSize.h4);
  static final h8 = SizedBox(height: BaseSize.h8);
  static final h12 = SizedBox(height: BaseSize.h12);
  static final h16 = SizedBox(height: BaseSize.h16);
  static final h20 = SizedBox(height: BaseSize.h20);
  static final h24 = SizedBox(height: BaseSize.h24);
  static final h28 = SizedBox(height: BaseSize.h28);
  static final h32 = SizedBox(height: BaseSize.h32);
  static final h36 = SizedBox(height: BaseSize.h36);
  static final h40 = SizedBox(height: BaseSize.h40);
  static final h48 = SizedBox(height: BaseSize.h48);
  static final h52 = SizedBox(height: BaseSize.h52);
  static final h56 = SizedBox(height: BaseSize.h56);
  static final h64 = SizedBox(height: BaseSize.h64);
  static final h72 = SizedBox(height: BaseSize.h72);
  static final h80 = SizedBox(height: BaseSize.h80);

  static final h6 = SizedBox(height: BaseSize.h6);


  /// [INFO]
  /// Gaps for custom width or height outside the 8 pixel rules
  static Widget customGapWidth(double value) => SizedBox(width: value.w);

  static Widget customGapHeight(double value) => SizedBox(height: value.h);

}
