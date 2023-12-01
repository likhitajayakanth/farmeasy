import 'package:farmeasy2/helper/appcolors.dart';
import 'package:farmeasy2/helper/iconhelper.dart';
import 'package:farmeasy2/helper/utils.dart';
import 'package:farmeasy2/models/onboardingcontent.dart';
import 'package:farmeasy2/pages/screenpage1.dart';
import 'package:farmeasy2/widgets/appbar.dart';
import 'package:farmeasy2/widgets/iconfont.dart';
import 'package:farmeasy2/widgets/themebutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<OnboardingContent> _content = Utils.getOnboarding();
  int pageIndex = 0;
  late PageController _controller;


  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }



  @override
  Widget build(BuildContext context){
    // TODO
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (int page) {
                  setState(() {
                    pageIndex = page;
                  });
                },
                children: List.generate(
                  _content.length,
                    (index) => Container(
                      padding: EdgeInsets.all(90),
                      margin: EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 80),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.MAIN_COLOR.withOpacity(0.3),
                            blurRadius: 20,
                            offset: Offset.zero
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset('assets/imgs/${_content[index].img}.png'),
                                SizedBox(height: 10),
                                Text(_content[index].message,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: AppColors.MAIN_COLOR,
                                      fontSize: 20
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_content.length, (index) =>
                  GestureDetector(
                    onTap: () {
                      _controller.animateTo(
                        MediaQuery.of(context).size.width * index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut
                      );
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColors.MAIN_COLOR,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              width: 6,
                              color: pageIndex == index ? Color(0xFFC1E09E) : Theme.of(context).canvasColor
                          )
                      ),
                    ),
                  )
              ),
            ),
            SizedBox(height: 20),
            ThemeButton(
              onClick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenOne())
                );
              },
              label: 'Jump to Onboarding',
              color: AppColors.DARK_GREEN,
              highlight: AppColors.DARKER_GREEN, // Set width to occupy the available space horizontally
            )
          ],
        ),
      ),
    );
  }
}