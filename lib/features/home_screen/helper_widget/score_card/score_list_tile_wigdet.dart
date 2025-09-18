import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe/core/common/font/custom_text_style.dart';
import 'package:tic_tac_toe/core/constants/color_constants.dart';

class ScoreListTileWigdet extends StatelessWidget {
  const ScoreListTileWigdet({
    super.key,
    required this.playerTitle,
    required this.score,
  });

  final String playerTitle;
  final String score;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: secondaryBackgroundColor,
      ),
      child: ListTile(
        title: Text(
          playerTitle,
          style: CustomTextStyle.medium(fontSize: 15.sp),
        ),
        trailing: Text(score, style: CustomTextStyle.medium(fontSize: 15.sp)),
      ),
    );
  }
}
