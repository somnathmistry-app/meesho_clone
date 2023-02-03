import 'package:flutter/material.dart';
import 'package:meesho_clone/styles/app_colors.dart';

import 'account.dart';
import 'categories.dart';
import 'help.dart';
import 'home_page.dart';
import 'my_order.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {

  int _selectedIndex = 0;

  //static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _screens =
  [
    const HomePage(),
    const Categories(),
    const MyOrder(),
    const HelpPage(),
    const AccountPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _screens.elementAt(_selectedIndex),

        ),
        bottomNavigationBar: BottomNavigationBar(

            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
              BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories',),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'My Order'),
              BottomNavigationBarItem(icon: Icon(Icons.help_outline_sharp), label: 'Help'),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),

            ],
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.themeColor,
            unselectedItemColor: AppColors.offWhiteGrey,
            unselectedLabelStyle: TextStyle(color: AppColors.offWhiteGrey),
            onTap: _onItemTapped)
    );
  }
}
