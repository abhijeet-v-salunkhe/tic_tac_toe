import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe/core/common/font/custom_text_style.dart';
import 'package:tic_tac_toe/core/constants/color_constants.dart';
import 'package:tic_tac_toe/features/home_screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isTablet = false;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          isTablet = true;
        }

        return ScreenUtilInit(
          designSize: isTablet ? Size(800, 1280) : Size(360, 690),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
          ),
        );
      },
    );
  }
}
