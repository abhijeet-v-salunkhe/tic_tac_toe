import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/font/custom_text_style.dart';
import '../../../core/constants/color_constants.dart';

class MatchDrawTextWidget extends StatelessWidget {
  const MatchDrawTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Match draw",
          style: CustomTextStyle.bold(fontSize: 25.sp, color: matchDrawColor),
        ),
        Text(
          "Good game, Try again!",
          style: CustomTextStyle.medium(fontSize: 10.sp, color: matchDrawColor),
        ),
      ],
    );
  }
}
