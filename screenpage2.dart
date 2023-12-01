import 'package:farmeasy2/helper/appcolors.dart';
import 'package:farmeasy2/helper/iconhelper.dart';
import 'package:farmeasy2/main.dart';
import 'package:farmeasy2/models/screen1.dart';
import 'package:farmeasy2/pages/screenpage3.dart';
import 'package:farmeasy2/widgets/appbar.dart';
import 'package:farmeasy2/widgets/camerascreen.dart';
import 'package:farmeasy2/widgets/categoryicon.dart';
import 'package:farmeasy2/widgets/iconfont.dart';
import 'package:farmeasy2/widgets/themebutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// late List<CameraDescription> cameras;

class ScreenTwo4 extends StatelessWidget {
  final Category4 selectedCategory4;

  ScreenTwo4({required this.selectedCategory4});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                  color: this.selectedCategory4.color,
                  iconName: this.selectedCategory4.icon,
                ),
                SizedBox(width: 10),
                Text(
                  this.selectedCategory4.name,
                  style: TextStyle(color: this.selectedCategory4.color, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  this.selectedCategory4.subCategories4.length,
                      (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenThree4(
                              subCategory4: this.selectedCategory4.subCategories4[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/imgs/' +
                                    this.selectedCategory4.subCategories4[index].imgName +
                                    '.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              this.selectedCategory4.subCategories4[index].name,
                              style: TextStyle(color: this.selectedCategory4.color),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class ScreenTwo1 extends StatefulWidget {

int amount = 0;
double price = 50.0;
double cost = 0.0;


Category1 selectedCategory1;

ScreenTwo1({ required this.selectedCategory1 });


@override
ScreenTwo1State createState() => ScreenTwo1State();
}

class ScreenTwo1State extends State<ScreenTwo1> {

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
                          image: AssetImage('assets/imgs/' + widget.selectedCategory1.imgName + '.png'),
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
                              color: widget.selectedCategory1.color,
                              iconName: widget.selectedCategory1.icon,
                              size: 50,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(widget.selectedCategory1.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30
                                  ),
                                ),
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
                    // Content inside SingleChildScrollView
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    color: AppColors.MAIN_COLOR,
                    child: InkWell(
                      splashColor: AppColors.HIGHTLIGHT_DEFAULT,
                      highlightColor: AppColors.HIGHTLIGHT_DEFAULT,
                      onTap: () {
                        // Handle button tap
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.transparent,
                            width: 4,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.save_as_rounded, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              'Results',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    color: AppColors.MAIN_COLOR,
                    child: InkWell(
                      splashColor: AppColors.HIGHTLIGHT_DEFAULT,
                      highlightColor: AppColors.HIGHTLIGHT_DEFAULT,
                      onTap: () {
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.transparent,
                            width: 4,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.history, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              'History',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    color: AppColors.MAIN_COLOR,
                    child: InkWell(
                      splashColor: AppColors.HIGHTLIGHT_DEFAULT,
                      highlightColor: AppColors.HIGHTLIGHT_DEFAULT,
                      onTap: () {
                        // Handle button tap
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.transparent,
                            width: 4,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.info,
                                color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              'Information',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CameraScreen(cameras)));
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}







// class ScreenTwo1 extends StatefulWidget {
//
//   int amount = 0;
//   double price = 50.0;
//   double cost = 0.0;
//
//
//   Category1 selectedCategory1;
//
//   ScreenThree({ required this.selectedCategory1 });
//
//
//   @override
//   ScreenThreeState createState() => ScreenThreeState();
// }
//
// class ScreenTwo1 extends State<ScreenTwo1> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           alignment: Alignment.center,
//           child: Column(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
//                 child: Stack(
//                   children: [
//                     Container(
//                       height: 300,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/imgs/' + widget.subCategory4.imgName + '.png'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Positioned.fill(
//                       child: Container(
//                         decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                                 begin: Alignment.bottomCenter,
//                                 end: Alignment.topCenter,
//                                 colors: [
//                                   Colors.black.withOpacity(0.7),
//                                   Colors.transparent
//                                 ]
//                             )
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       left: 0,
//                       right: 0,
//                       child: Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             CategoryIcon(
//                               color: widget.subCategory4.color,
//                               iconName: widget.subCategory4.icon,
//                               size: 50,
//                             ),
//                             SizedBox(width: 10),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 Text(widget.subCategory4.name,
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 30
//                                   ),
//                                 ),
//                                 SizedBox(height: 10),
//                                 Container(
//                                   padding: EdgeInsets.all(10),
//                                   decoration: BoxDecoration(
//                                       color: widget.subCategory4.color,
//                                       borderRadius: BorderRadius.circular(20)
//                                   ),
//                                   child: Text('\₹50.00 /kg',
//                                     style: TextStyle(
//                                         fontSize: 20,
//                                         color: Colors.white
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       right: 20,
//                       top: 100,
//                       child: Container(
//                         padding: EdgeInsets.only(top: 5, left: 15,right: 15,bottom: 8),
//                         decoration: BoxDecoration(
//                             color: AppColors.MAIN_COLOR,
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.black.withOpacity(0.5),
//                                   blurRadius: 20,
//                                   offset: Offset.zero
//                               )
//                             ]
//                         ),
//                         child: Row(
//                           children: [
//                             Text('3',
//                               style: TextStyle(
//                                   color: Colors.white, fontSize: 15
//                               ),
//                             ),
//                             Icon(Icons.shopping_cart, color: Colors.white, size: 15),
//                           ],
//                         ),
//                       ),
//                     ),
//                     MainAppBar(
//                       themeColor: Colors.white,
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Container(
//                     padding: EdgeInsets.all(20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         CategoryPartsList(subCategory4: widget.subCategory4),
//                         UnitPriceWidget(),
//                         ThemeButton(
//                           label: 'Add to Subtotal',
//                           icon: Icon(Icons.shopping_cart, color: Colors.white),
//                           onClick: () {},
//                         ),
//                         ThemeButton(
//                           label: 'Select your location',
//                           icon: Icon(Icons.location_pin, color: Colors.white),
//                           onClick: () {},
//                           color: AppColors.DARK_GREEN,
//                           highlight: AppColors.DARKER_GREEN,
//                         ),
//                         // Add other widgets as needed
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
