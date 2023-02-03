import 'package:flutter/material.dart';
import 'package:meesho_clone/styles/common_modules/app_bar.dart';



class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBars.myAppBar(Container(), 'Categories'),
      body: Container(),
    );
  }
}