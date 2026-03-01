import 'package:flutter/material.dart';

class Hadethtab extends StatelessWidget{
  const Hadethtab({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
      decoration: BoxDecoration(
      
        image: DecorationImage(image: AssetImage("assets/images/HadethBg.png"),
         fit:BoxFit.fill,
        )
      ),
    );
  }

}