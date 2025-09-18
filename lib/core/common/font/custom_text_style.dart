import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/common/font/font_family.dart';
import 'package:tic_tac_toe/core/constants/color_constants.dart';

class CustomTextStyle {
  static TextStyle bold({Color? color, required double fontSize}) {
    return ThemeData.light().textTheme.bodyMedium!.copyWith(
      fontSize: fontSize,
      color: color ?? primaryFontColor,
      fontFamily: boldFontFamily,
    );
  }

  static TextStyle medium({Color? color, required double fontSize}) {
    return ThemeData.light().textTheme.bodyMedium!.copyWith(
      fontSize: fontSize,
      color: color ?? primaryFontColor,
      fontFamily: mediumFontFamily,
    );
  }

  static TextStyle regular({Color? color, required double fontSize}) {
    return ThemeData.light().textTheme.bodyMedium!.copyWith(
      fontSize: fontSize,
      color: color ?? primaryFontColor,
      fontFamily: regularFontFamily,
    );
  }

  static TextStyle semiBold({Color? color, required double fontSize}) {
    return ThemeData.light().textTheme.bodyMedium!.copyWith(
      fontSize: fontSize,
      color: color ?? primaryFontColor,
      fontFamily: semiBoldFontFamily,
    );
  }
}
