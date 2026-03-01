import 'package:flutter/material.dart';

class Sebhatab extends StatelessWidget{
  const Sebhatab({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/SebhaBg.png"), fit:BoxFit.fill,)
      ),
    );
  }

}