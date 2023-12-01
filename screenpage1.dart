import 'package:farmeasy2/helper/appcolors.dart';
import 'package:farmeasy2/helper/iconhelper.dart';
import 'package:farmeasy2/helper/utils.dart';
import 'package:farmeasy2/models/screen1.dart';
import 'package:farmeasy2/pages/screenpage2.dart';
import 'package:farmeasy2/widgets/appbar.dart';
import 'package:farmeasy2/widgets/bottombar.dart';
import 'package:farmeasy2/widgets/screen1card.dart';
import 'package:farmeasy2/widgets/categoryicon.dart';
import 'package:farmeasy2/widgets/iconfont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class ScreenOne extends StatelessWidget {
//
//   List<Category1> categories1 = Utils.getMockedCategories1();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(),
//       appBar: AppBar(),
//           body: Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10, bottom: 10),
//                   child: Text(
//                     'Select your Category',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.black),
//                   ),
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: categories1.length,
//                     itemBuilder: (BuildContext ctx, int index){
//                       return Container(
//                           margin: EdgeInsets.all(20),
//                           height: 150,
//                           child: Stack(
//                             children: [
//                               Positioned.fill(
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(20),
//                                   child: Image.asset('assets/imgs/${categories1[index].imgName}.png',
//                                       fit: BoxFit.cover
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 bottom: 0,
//                                 left: 0,
//                                 right: 0,
//                                 child: Container(
//                                   height: 120,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(20),
//                                       bottomRight: Radius.circular(20),
//                                     ),
//                                     gradient: LinearGradient(
//                                       begin: Alignment.bottomCenter,
//                                       end: Alignment.topCenter,
//                                       colors: [
//                                         Colors.black.withOpacity(0.7),
//                                         Colors.transparent,
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 bottom: 0,
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(10),
//                                   child: Row(
//                                     children: [
//                                       CategoryIcon(
//                                         color: categories1[index].color,
//                                         iconName: categories1[index].icon,
//                                       ),
//                                       SizedBox(width: 20),
//                                       Text(categories1[index].name,
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 25
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           )
//                       );
//                     },
//                   ),
//                 ),
//                 Divider(),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: categories1.length,
//                     itemBuilder: (BuildContext ctx, int index){
//                       return Container(
//                           margin: EdgeInsets.all(20),
//                           height: 150,
//                           child: Stack(
//                             children: [
//                               Positioned.fill(
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(20),
//                                   child: Image.asset('assets/imgs/${categories1[index].imgName}.png',
//                                       fit: BoxFit.cover
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 bottom: 0,
//                                 left: 0,
//                                 right: 0,
//                                 child: Container(
//                                   height: 120,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(20),
//                                       bottomRight: Radius.circular(20),
//                                     ),
//                                     gradient: LinearGradient(
//                                       begin: Alignment.bottomCenter,
//                                       end: Alignment.topCenter,
//                                       colors: [
//                                         Colors.black.withOpacity(0.7),
//                                         Colors.transparent,
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 bottom: 0,
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(10),
//                                   child: Row(
//                                     children: [
//                                       CategoryIcon(
//                                         color: categories1[index].color,
//                                         iconName: categories1[index].icon,
//                                       ),
//                                       SizedBox(width: 20),
//                                       Text(categories1[index].name,
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 25
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           )
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           )
//       );
//   }
// }

//
class ScreenOne extends StatelessWidget {
  final List<Category1> categories1 = Utils.getMockedCategories1();
  final List<Category2> categories2 = Utils.getMockedCategories2();
  final List<Category3> categories3 = Utils.getMockedCategories3();
  final List<Category4> categories4 = Utils.getMockedCategories4();
  final List<Category5> categories5 = Utils.getMockedCategories5();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: MainAppBar(),


      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Select your Category:',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                // ################################################################ disease detection
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories1.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard1(
                      category1: categories1[index],
                      onCardClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenTwo1(
                              selectedCategory1: this.categories1[index],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),

                // ################################################################ irrigation control
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories2.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard2(
                        category2: categories2[index]
                    );
                  },
                ),

                // ################################################################ yield prediction
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories3.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard3(
                        category3: categories3[index]
                    );
                  },
                ),

                // ################################################################ profit prediction
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories4.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard4(
                      category4: categories4[index],
                      onCardClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenTwo4(
                                selectedCategory4: this.categories4[index],
                              ),
                          )
                        );
                      },
                    );
                  },
                ),

                // ################################################################ expert suggestion
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories5.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard5(
                        category5: categories5[index]
                    );
                  },
                ),

                // ################################################################ end of categories

              ],
            ),
          ],
        )
      ),
      bottomNavigationBar: CategoryBottomBar(),
    );
  }
}
