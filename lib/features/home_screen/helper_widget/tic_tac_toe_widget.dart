import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/core/common/widgets/common_button.dart';
import 'package:tic_tac_toe/features/home_screen/controller/home_screen_controller.dart';
import 'package:tic_tac_toe/features/home_screen/helper_widget/loose_text_widget.dart';
import 'package:tic_tac_toe/features/home_screen/helper_widget/match_draw_text_widget.dart';
import 'package:tic_tac_toe/features/home_screen/helper_widget/score_card/score_card_widget.dart';
import 'package:tic_tac_toe/features/home_screen/helper_widget/win_text_widget.dart';

import '../../../core/common/font/custom_text_style.dart';
import '../../../core/constants/color_constants.dart';
import 'grid_box_widget.dart';

class TicTacToeWidget extends StatelessWidget {
  TicTacToeWidget({super.key});

  final controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10.h),
      child: Column(
        spacing: 10.h,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          controller.gameOverWithIndex != null
              ? controller.gameOverWithIndex == 1
                    ? Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(3.1416),
                        child: WinTextWidget(),
                      )
                    : Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(3.1416),
                        child: LooseTextWidget(),
                      )
              : SizedBox.shrink(),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(3.1416),
            child: Text(
              "Player 1",
              style: CustomTextStyle.semiBold(
                fontSize: 20.sp,
                color: secondaryFontColor,
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.h,
              mainAxisSpacing: 10.h,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (controller.gameOverWithIndex == null) {
                    controller.onClickGridBloc(index);
                  }
                },
                child: GridBoxWidget(
                  iconNumber: controller.listOfIconNumber[index],
                ),
              );
            },
          ),
          Text(
            "Player 2",
            style: CustomTextStyle.semiBold(
              fontSize: 20.sp,
              color: secondaryFontColor,
            ),
          ),
          controller.gameOverWithIndex != null
              ? controller.gameOverWithIndex == 0
                    ? WinTextWidget()
                    : LooseTextWidget()
              : SizedBox.shrink(),

          if (controller.isMatchDraw) MatchDrawTextWidget(),
          if (controller.isShowPlayAgainBtn)
            CommonButton(
              onTap: controller.onClickPlayAgain,
              buttonText: "Play Again",
              leading: Icon(Icons.refresh, color: primaryFontColor),
            ),
          ScoreCardWidget(),
        ],
      ),
    );
  }
}
