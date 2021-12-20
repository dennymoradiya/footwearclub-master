import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:footwearclub/constants/constant.dart';
import 'package:footwearclub/splashscreen/splashdata.dart';

import 'mainscreen.dart';


class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().initsize(context);

    final List<Color> colors;

    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              MainScreen(),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(title: Text('Item One'), icon: Icon(Icons.home),activeColor: kPrimaryColor,inactiveColor: kSecondaryColor),
          BottomNavyBarItem(title: Text('Item Two'), icon: Icon(Icons.list),activeColor: kPrimaryColor,inactiveColor: kSecondaryColor),
          BottomNavyBarItem(
              title: Text('Item Three'),
              icon: Icon(Icons.card_travel_outlined),activeColor: kPrimaryColor,inactiveColor: kSecondaryColor),
          BottomNavyBarItem(
              title: Text('Item Four'), icon: Icon(Icons.settings),activeColor: kPrimaryColor,inactiveColor: kSecondaryColor),
        ],
      ),
    );
  }
}
