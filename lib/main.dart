import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/HomeScreen.dart';
import 'package:flutter_application_1/IntroScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: IntroScreen.routeName,
     routes:{
     IntroScreen.routeName :(context) => IntroScreen(),
     HomeScreen.routeName:(context) => HomeScreen(),
     },
    );
  }
}

