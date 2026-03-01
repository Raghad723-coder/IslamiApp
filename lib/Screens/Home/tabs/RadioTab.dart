import 'package:flutter/material.dart';

class Radiotab extends StatelessWidget{
  const Radiotab({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/RadioBg.png"), fit:BoxFit.fill,)
      ),
    );
  }

}