import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meesho_clone/pages/tab_category.dart';
import 'package:meesho_clone/pages/search.dart';
import 'package:meesho_clone/styles/app_colors.dart';
import 'package:meesho_clone/styles/common_modules/app_bar.dart';
import 'package:meesho_clone/styles/common_modules/my_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    List<String> imgist = [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpeg',
      'assets/images/img4.jpg',
      'assets/images/img5.jpg',
      'assets/images/img6.jpg',
    ];


    return Scaffold(
      appBar: MyAppBars.myAppBar(MyWidgets.user(),'User'),
      body: Column(
        children: [
          const SizedBox(height: 15,),
          InkWell(
            onTap: () {
              Get.to(() => const SearchPage());
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.blackGrey),
                  borderRadius: BorderRadius.circular(5)),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.search_rounded,
                        color: AppColors.offWhiteGrey, size: 28),
                    Text('Search for Products...',
                        style: TextStyle(color: AppColors.offWhiteGrey)),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Row(
                        children: [
                          VerticalDivider(color: AppColors.blackGrey),
                          Icon(Icons.mic_none_sharp,
                              color: AppColors.blackGrey),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.camera_alt_outlined,
                              color: AppColors.blackGrey),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 5,),
          // Generated code for this TabBar Widget...
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
                      Tab(
                        child: Row(
                          children: [
                            Image.asset('assets/images/all.png',scale: 25),
                            const Text('All')
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(()=>  TabCategory(1));
                        },
                        child: Tab(
                          child: Row(
                            children: [
                              Image.asset('assets/images/all.png',scale: 25),
                              const Text('Women')
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap:() {
                          Get.to(()=>  TabCategory(2));
                          },
                        child: Tab(
                          child: Row(
                            children: [
                              Image.asset('assets/images/all.png',scale: 25),
                              const Text('Men')
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap:() {
                          Get.to(()=>  TabCategory(3));
                          },
                        child: Tab(
                          child: Row(
                            children: [
                              Image.asset('assets/images/all.png',scale: 25),
                              const Text('Kids')
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap:() {
                          Get.to(()=>  TabCategory(4));
                          },
                        child: Tab(
                          child: Row(
                            children: [
                              Image.asset('assets/images/all.png',scale: 25),
                              const Text('Electronics')
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap:() {
                          Get.to(()=>  TabCategory(5));
                          },
                        child: Tab(
                          child: Row(
                            children: [
                              Image.asset('assets/images/all.png',scale: 25),
                              const Text('Home & Kitchen')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
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
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 60,
                            child: ListView.builder(
                              // shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: imgist.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 60,
                                  height: 20,
                                  margin: const EdgeInsets.symmetric(horizontal: 15,),
                                  //  padding: const EdgeInsets.symmetric(vertical: 20),
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      image: DecorationImage(image: AssetImage(imgist[index],)),
                                      borderRadius: BorderRadius.circular(30)),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('      Welcome'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '      What are you looking for?',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          ],
                        ),
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
          // GridView.builder(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       crossAxisSpacing: 10,
          //       mainAxisSpacing: 10,
          //       childAspectRatio: 4 / 3,
          //     ),
          //     shrinkWrap: true,
          //     itemCount: 5,
          //     physics: const NeverScrollableScrollPhysics(),
          //     padding: const EdgeInsets.all(15),
          //     itemBuilder: (BuildContext context, int index) {
          //       return Container(
          //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
          //           color: Colors.grey[300],),
          //         child: Column(
          //           children: [
          //             Container(
          //              // height: 30,
          //               decoration: BoxDecoration(
          //                   border: Border.all(
          //                       color: Colors.grey),
          //                   borderRadius: const BorderRadius.only(
          //                       bottomLeft: Radius.circular(5),
          //                       bottomRight: Radius.circular(5)
          //                   ),color: Colors.white
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     })
        ],
      ),
    );
  }
}

/*
GridTile(

                  footer: Container(

                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),color: Colors.white
                      ),

                      height: 30,),
                  child: Card(
                    shape: RoundedRectangleBorder(
                     // side: BorderSide(color: AppColors.blackGrey),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    color: Colors.grey[300],
                    child: Center(child: Text('${index + 1}')),
                  ),
                )
 */
