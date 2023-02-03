import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meesho_clone/pages/test.dart';
import 'package:meesho_clone/styles/common_modules/app_bar.dart';
import 'package:meesho_clone/styles/common_modules/my_widgets.dart';

import '../styles/app_colors.dart';



class TabCategory extends StatelessWidget {
  // TabCategory({Key? key}) : super(key: key);

  TabCategory(this.index, {Key? key}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.myAppBar(MyWidgets.backButton(),'Women Fashion'),
      body: Column(
        children: [
          Expanded(
            child: DefaultTabController(
              length: 6,
              initialIndex: index,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    labelColor: AppColors.themeColor,
                    indicatorColor: AppColors.themeColor,
                    unselectedLabelColor: AppColors.blackGrey,
                    tabs: [
                      InkWell(
                        onTap: () {
                          Get.to(()=> const BottomNavigationBarExample());
                        },
                        child: Tab(
                          child: Row(
                            children: [
                              Image.asset('assets/images/all.png',scale: 25),
                              const Text('All')
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset('assets/images/all.png',scale: 25),
                            const Text('Women')
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset('assets/images/all.png',scale: 25),
                            const Text('Men')
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset('assets/images/all.png',scale: 25),
                            const Text('Kids')
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset('assets/images/all.png',scale: 25),
                            const Text('Electronics')
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset('assets/images/all.png',scale: 25),
                            const Text('Home & Kitchen')
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(),
                        ListView(
                          children: [
                            Container(
                              height: 40,
                              color: AppColors.themeColorTwo,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.location_on_outlined, color: AppColors.themeColor3),
                                  const Text(
                                    'Add delivery location to get extra discount',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Container(
                                      height: 18,
                                      width: 18,
                                      child: Image.asset('assets/images/arrow.gif'))
                                ],
                              ),
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            Container(
                              height: 40,
                              color: AppColors.themeColorTwo,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.location_on_outlined, color: AppColors.themeColor3),
                                  const Text(
                                    'Add delivery location to get extra discount',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Container(
                                      height: 18,
                                      width: 18,
                                      child: Image.asset('assets/images/arrow.gif'))
                                ],
                              ),
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            Container(
                              height: 40,
                              color: AppColors.themeColorTwo,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.location_on_outlined, color: AppColors.themeColor3),
                                  const Text(
                                    'Add delivery location to get extra discount',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Container(
                                      height: 18,
                                      width: 18,
                                      child: Image.asset('assets/images/arrow.gif'))
                                ],
                              ),
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            Container(
                              height: 40,
                              color: AppColors.themeColorTwo,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.location_on_outlined, color: AppColors.themeColor3),
                                  const Text(
                                    'Add delivery location to get extra discount',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Container(
                                      height: 18,
                                      width: 18,
                                      child: Image.asset('assets/images/arrow.gif'))
                                ],
                              ),
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            Container(
                              height: 40,
                              color: AppColors.themeColorTwo,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.location_on_outlined, color: AppColors.themeColor3),
                                  const Text(
                                    'Add delivery location to get extra discount',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Container(
                                      height: 18,
                                      width: 18,
                                      child: Image.asset('assets/images/arrow.gif'))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
