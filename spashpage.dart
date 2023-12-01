import 'package:farmeasy2/helper/appcolors.dart';
import 'package:farmeasy2/helper/iconhelper.dart';
import 'package:farmeasy2/widgets/iconfont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  final int duration;
  final Widget goToPage;

  SplashPage({required this.duration, required this.goToPage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => goToPage),
      );
    });

    return Scaffold(
      body: Container(
        color: AppColors.MAIN_COLOR,
        alignment: Alignment.center,
        child: IconFont(
          color: Colors.white,
          iconName: iconFontHelper.LOGO,
          size: 100,
        ),
      ),
    );
  }
}