import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe/core/common/font/custom_text_style.dart';
import 'package:tic_tac_toe/core/constants/color_constants.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.buttonText,
    this.buttonStyle,
    this.leading,
    this.trailing,
    required this.onTap,
  });

  final Widget? leading;
  final Widget? trailing;
  final String buttonText;
  final TextStyle? buttonStyle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        padding: EdgeInsetsGeometry.all(10.h),
        child: Center(
          child: Row(
            spacing: 10.w,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              leading != null ? leading! : SizedBox.shrink(),
              Text(
                buttonText,
                style: buttonStyle ?? CustomTextStyle.medium(fontSize: 15.sp),
              ),
              trailing != null ? trailing! : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
