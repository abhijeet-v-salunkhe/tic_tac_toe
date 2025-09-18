import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/font/custom_text_style.dart';
import '../../../core/constants/color_constants.dart';

class LooseTextWidget extends StatelessWidget {
  const LooseTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "You loose",
      style: CustomTextStyle.bold(fontSize: 30.sp, color: looseColor),
    );
  }
}
