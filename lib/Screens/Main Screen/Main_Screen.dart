
import 'package:exercises_app/Screens/Meditation%20Screen/Meditation_Screen.dart';
import 'package:exercises_app/Search_Bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Bottom_Navigation_Bar.dart';
import 'Category_Card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Color(0xfff5cebb),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 4),
                      width: 50,
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xfff2bea1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'Good Morning',
                    style: Theme.of(context)
                        .textTheme
                        .display1!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'Are you ready?\nLet\'s go',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!.copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    height: size.height* 0.07,
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1,
                      children: [
                        CategoryCard('Diet Recommendation',
                            'assets/icons/Hamburger.svg', () {}),
                        CategoryCard('Kagel Exercises',
                            'assets/icons/Excrecises.svg', () {}),
                        CategoryCard(
                            'Meditation', 'assets/icons/Meditation.svg', () {
                              Navigator.pushNamed(context, MeditationScreen.route_name);
                        }),
                        CategoryCard('Yoga', 'assets/icons/yoga.svg', () {}),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}