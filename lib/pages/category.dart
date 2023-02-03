import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meesho_clone/pages/test.dart';
import 'package:meesho_clone/styles/common_modules/app_bar.dart';

import '../styles/app_colors.dart';



class TabCategory extends StatelessWidget {
  const TabCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.myAppBar('Women Fashion'),
      body: Column(
        children: [
          Expanded(
            child: DefaultTabController(
              length: 6,
              initialIndex: 0,
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
                        Container(),
                        Container(),
                        Container(),
                        Container(),
                        Container(),
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
