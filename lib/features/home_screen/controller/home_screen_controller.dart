import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constants/color_constants.dart';

class HomeScreenController extends GetxController {
  int currentMove = 0;
  Icon? currentIcon;
  List<int?> listOfIconNumber = List<int?>.filled(9, null);
  int countOfO = 0;
  int countOfX = 0;
  List<int>? resultedList;
  bool isShowPlayAgainBtn = false;
  bool isMatchDraw = false;

  int scoreOfX = 0;
  int scoreOfO = 0;

  List<List<int>> checks = [
    [0, 4, 8],
    [2, 4, 6],
    [1, 4, 7],
    [3, 4, 5],
    [0, 3, 6],
    [0, 1, 2],
    [6, 7, 8],
    [2, 5, 8],
  ];

  int? gameOverWithIndex;

  void changeMove() {
    log("In the change");
    if (currentMove == 0) {
      currentMove = 1;
      countOfO += 1;
      log("currentMove : ${currentMove}");
    } else {
      currentMove = 0;
      countOfX += 1;
      log("currentMove: ${currentMove}");

      update();
    }
  }

  void setImage(int index) {
    if (listOfIconNumber[index] == null) {
      currentMove == 0
          ? listOfIconNumber[index] = 0
          : listOfIconNumber[index] = 1;

      update();
    }

    if (countOfO >= 3 || countOfX >= 3) {
      //  log("Go to checking result.........");
      resultedList = checkResult();
      //  log("ResultedList : $resultedList");
      if ((countOfO == 4 && countOfX == 5) ||
          (countOfO == 5 && countOfX == 4) && resultedList == null) {
        isMatchDraw = true;
        isShowPlayAgainBtn = true;
      }
      if (resultedList != null) {
        gameOverWithIndex = currentMove;
        showWinResult(resultedList!);
        isShowPlayAgainBtn = true;
        currentMove == 1 ? scoreOfO += 1 : scoreOfX += 1;
      }
    }
  }

  List<int>? checkResult() {
    for (List<int> check in checks) {
      for (int i in check) {
        if (currentMove != listOfIconNumber[i]) {
          break;
        }
        if (i == check[2]) {
          log("checkResult = $i");
          return check;
        }
      }
    }

    return null;
  }

  int winnedNumberForO = 2;
  int winnedNumberForX = 3;

  void showWinResult(List<int> indexOfGrid) {
    int setNumber;
    if (currentMove == 0) {
      setNumber = winnedNumberForX;
    } else {
      setNumber = winnedNumberForO;
    }
    for (int i in indexOfGrid) {
      listOfIconNumber[i] = setNumber;
    }
    update();
  }

  void onClickGridBloc(int index) {
    log("Index : $index");
    changeMove();
    setImage(index);
  }

  void onClickPlayAgain() {
    listOfIconNumber = List<int?>.filled(9, null);
    resultedList = null;
    currentMove = 0;
    currentIcon = null;
    countOfX = 0;
    countOfO = 0;
    gameOverWithIndex = null;
    isMatchDraw = false;
    isShowPlayAgainBtn = false;
    update();
  }
}
