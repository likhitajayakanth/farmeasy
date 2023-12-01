import 'package:farmeasy2/helper/appcolors.dart';
import 'package:farmeasy2/models/screen2.dart';
import 'package:farmeasy2/models/screen3.dart';
import 'package:farmeasy2/widgets/appbar.dart';
import 'package:farmeasy2/widgets/categoryicon.dart';
import 'package:farmeasy2/widgets/categorypartslist.dart';
import 'package:farmeasy2/widgets/themebutton.dart';
import 'package:farmeasy2/widgets/unitpricewidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenThree4 extends StatefulWidget {

  int amount = 0;
  double price = 50.0;
  double cost = 0.0;


  SubCategory4 subCategory4;

  ScreenThree4({ required this.subCategory4 });


  @override
  ScreenThree4State createState() => ScreenThree4State();
}

class ScreenThree4State extends State<ScreenThree4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/imgs/' + widget.subCategory4.imgName + '.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ]
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryIcon(
                            color: widget.subCategory4.color,
                            iconName: widget.subCategory4.icon,
                            size: 50,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(widget.subCategory4.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: widget.subCategory4.color,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Text('\₹50.00 /kg',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 100,
                    child: Container(
                      padding: EdgeInsets.only(top: 5, left: 15,right: 15,bottom: 8),
                      decoration: BoxDecoration(
                          color: AppColors.MAIN_COLOR,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 20,
                                offset: Offset.zero
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          Text('3',
                            style: TextStyle(
                                color: Colors.white, fontSize: 15
                            ),
                          ),
                          Icon(Icons.shopping_cart, color: Colors.white, size: 15),
                        ],
                      ),
                    ),
                  ),
                  MainAppBar(
                    themeColor: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CategoryPartsList(subCategory4: widget.subCategory4),
                      UnitPriceWidget(),
                      ThemeButton(
                        label: 'Add to Subtotal',
                        icon: Icon(Icons.shopping_cart, color: Colors.white),
                        onClick: () {},
                      ),
                      ThemeButton(
                        label: 'Select your location',
                        icon: Icon(Icons.location_pin, color: Colors.white),
                        onClick: () {},
                        color: AppColors.DARK_GREEN,
                        highlight: AppColors.DARKER_GREEN,
                      ),
                      // Add other widgets as needed
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}



