import 'package:flutter/material.dart';

import '../app_colors.dart';

class MyAppBars {
  static AppBar myAppBar(Widget myContainer, String title) {
    return AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        titleSpacing: 0,
        leading: myContainer,
        title: Text(title,
            style: TextStyle(color: AppColors.blackGrey, fontSize: 14)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
                color: AppColors.black,
              )
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: AppColors.black,
              )),
          const SizedBox(
            width: 10,
          )
        ]);
  }
}
