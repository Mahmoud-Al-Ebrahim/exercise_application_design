import 'package:exercises_app/Constants.dart';
import 'package:exercises_app/Screens/Main%20Screen/Bottom_Navigation_Bar.dart';
import 'package:exercises_app/Screens/Meditation%20Screen/Session_Card.dart';
import 'package:exercises_app/Search_Bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({Key? key}) : super(key: key);
  static String route_name = '/Screens/Meditation_Screen';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: MyBottomNavigationBar(),
        body: Stack(children: [
          Container(
            height: size.height * 0.5,
            decoration: BoxDecoration(
              color: blueLightColor,
              image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/meditation_bg.png'),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .display1!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    '3-10 MIN Course',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SizedBox(
                    width: size.width * 0.6,
                    child: Text(
                      'Live happier and healthier by learning the fundamentals of meditation and mindfulness.',
                      style: TextStyle(height: 1.4),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.5,
                    height: size.height * 0.14,
                    child: SearchBar(),
                  ),
                  SizedBox(
                    height: size.height * 0.022,
                  ),
                  Wrap(
                    runSpacing: 20,
                    spacing: 20,
                    children: [
                      SessionCard(
                        sessionNumber: 1,
                        isDone: true,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNumber: 2,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNumber: 3,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNumber: 4,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNumber: 5,
                        press: () {},
                      ),
                      SessionCard(
                        sessionNumber: 6,
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .title!
                        .copyWith(fontWeight: FontWeight.bold,),
                  ),
                  Container(
                    height: 80,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: shadowColor,
                            offset: Offset(0,15),
                            blurRadius: 20,
                            spreadRadius: -13
                        )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                         children: [
                           SvgPicture.asset('assets/icons/Meditation_women_small.svg'),
                           SizedBox(
                             width: 20,
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Basic 2',style: Theme.of(context).textTheme.subtitle1,),
                               Text('Start your deepen you practice'),
                             ],
                           ),
                         ],
                       ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/Lock.svg'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ))
        ]));
  }
}
