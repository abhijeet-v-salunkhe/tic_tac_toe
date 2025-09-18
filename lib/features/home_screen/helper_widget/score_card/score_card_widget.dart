import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/core/common/font/custom_text_style.dart';
import 'package:tic_tac_toe/features/home_screen/controller/home_screen_controller.dart';
import 'package:tic_tac_toe/features/home_screen/helper_widget/score_card/score_list_tile_wigdet.dart';

class ScoreCardWidget extends StatelessWidget {
  ScoreCardWidget({super.key});

  final controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Score", style: CustomTextStyle.bold(fontSize: 25.sp)),
        ScoreListTileWigdet(
          playerTitle: "Player 1 (0)",
          score: "${controller.scoreOfO}",
        ),
        ScoreListTileWigdet(
          playerTitle: "Player 1 (X)",
          score: "${controller.scoreOfX}",
        ),
      ],
    );
  }
}
