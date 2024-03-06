import 'package:flutter/material.dart';

import 'Bottom_Navigation_Item.dart';


class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavigationItem('Today', 'assets/icons/calendar.svg', () {}),
          BottomNavigationItem('All Exercises', 'assets/icons/gym.svg', () {},isActive: true,),
          BottomNavigationItem('Settings', 'assets/icons/Settings.svg', () {}),
        ],
      ),
    );
  }
}
