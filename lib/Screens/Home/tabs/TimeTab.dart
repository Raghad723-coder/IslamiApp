import 'package:flutter/material.dart';

class Timetab extends StatelessWidget{
  const Timetab({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/TimeBg.png"), fit:BoxFit.fill,)
      ),
    );
  }

}