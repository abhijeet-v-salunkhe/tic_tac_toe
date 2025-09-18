import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe/core/constants/color_constants.dart';

class GridBoxWidget extends StatelessWidget {
  const GridBoxWidget({super.key, this.iconNumber});

  final int? iconNumber;

  @override
  Widget build(BuildContext context) {
    Icon? icon;
    if (iconNumber != null) {
      if (iconNumber == 0) {
        icon = Icon(CupertinoIcons.multiply, size: 50.h, color: crossColor);
      } else if (iconNumber == 1) {
        icon = Icon(CupertinoIcons.circle, size: 50.h, color: oColor);
      } else if (iconNumber == 2) {
        icon = Icon(
          CupertinoIcons.circle,
          size: 60.h,
          color: Colors.green,
          weight: 100.h,
        );
      } else {
        icon = Icon(
          CupertinoIcons.multiply,
          size: 60.h,
          color: Colors.green,
          weight: 100.h,
        );
      }
    }
    return Container(
      width: 100.w,
      height: 100.w,
      decoration: BoxDecoration(
        color: secondaryBackgroundColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: icon,
    );
  }
}
