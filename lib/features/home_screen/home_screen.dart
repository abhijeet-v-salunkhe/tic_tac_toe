import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/core/common/widgets/common_app_bar.dart';
import 'package:tic_tac_toe/core/constants/color_constants.dart';
import 'package:tic_tac_toe/features/home_screen/controller/home_screen_controller.dart';
import 'package:tic_tac_toe/features/home_screen/helper_widget/tic_tac_toe_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) => Scaffold(
        backgroundColor: primaryBackgroundColor,
        appBar: commonAppBar(title: "Tic-Tac-Toe", inCenter: true),
        body: TicTacToeWidget(),
      ),
    );
  }
}
