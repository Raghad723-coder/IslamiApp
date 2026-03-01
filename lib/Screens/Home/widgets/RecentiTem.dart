import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/appColors.dart';
import 'package:flutter_application_1/models/SuraModel.dart';

class Recentitem extends StatelessWidget{
   Recentitem({super.key,required this.model});
Suramodel model;
  @override
  Widget build(BuildContext context) {
   return Container(
    width: 250,
    
    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color:AppColors.primary
    ),
    child: Row(
children: [
Expanded(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(model.surahNamesEnglish,style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),),
      SizedBox(height: 8,),
       Text(model.name,style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold
      ),),
      SizedBox(height: 8,),
       Text(" ${model.surahVerses} verses",style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold
      ),),
  
    ],
  ),
),
Expanded(child: Image.asset("assets/images/recent.png")),
],
    
    ),
   );
  }
}