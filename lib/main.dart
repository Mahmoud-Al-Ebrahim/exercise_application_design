import 'package:exercises_app/Constants.dart';
import 'package:flutter/material.dart';

import 'Screens/Main Screen/Main_Screen.dart';
import 'Screens/Meditation Screen/Meditation_Screen.dart';

void main() {
  runApp(ExercisesApp());
}

class ExercisesApp extends StatelessWidget {
  const ExercisesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: backGroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: textColor),
      ),
      home: MainScreen(),
      routes: {
        MeditationScreen.route_name:(context)=>MeditationScreen()
      },
    );
  }
}
