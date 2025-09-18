import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe/core/common/font/custom_text_style.dart';
import 'package:tic_tac_toe/core/constants/color_constants.dart';

AppBar commonAppBar({required String title, bool? inCenter}) {
  return AppBar(
    centerTitle: inCenter,
    backgroundColor: primaryBackgroundColor,
    title: Text(title, style: CustomTextStyle.semiBold(fontSize: 20.sp)),
  );
}
