

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_colors.dart';

class MyWidgets{
  static Widget textView(String text, Color colors, double fontSize,
      {FontWeight? fontWeight}
      ) =>
      Text(
        text,
        style: TextStyle(
            color: colors, fontSize: fontSize, fontWeight: fontWeight),
      );

  static Widget backButton (){
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Icon(Icons.arrow_back_ios_rounded,color: AppColors.blackGrey),);
  }

  static Widget user(){
    return Container(
      decoration: BoxDecoration( color: AppColors.offWhiteGrey,borderRadius: BorderRadius.circular(100)),
      child: Image.asset('assets/images/user.jpg', fit: BoxFit.cover),
    );
  }
}