import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/SuraModel.dart';

class Suraitem extends StatelessWidget{
 Suramodel model;
   Suraitem({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
//bu deafult 3ndo padding
return ListTile( //by3ml el divider w colum el words
leading:     Stack( 
      alignment: Alignment.center,
       children: [
         Image.asset("assets/images/suraNumber.png",
         height: 52,width: 52,),
       
        Text("${model.surahIndex}",style: 
      TextStyle(fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.bold))
       ],
     ), 
title:Text(model.name,style: //el swar
      TextStyle(fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold
      ),)
,subtitle: Text("${model.surahVerses} verses",style:  //el kalm el t7t el swar
      TextStyle(fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.bold
      ),),
      trailing: Text(model.surahNamesEnglish,style:  //el n7ya rl tanya 
      TextStyle(fontSize: 16,
      color: Colors.white),) ,
  
);



  //  return Row(children: [
  //    Stack(
  //     alignment: Alignment.center,
  //      children: [
  //        Image.asset("assets/images/suraNumber.png",
  //        height: 52,width: 52,),
       
  //       Text("1",style: 
  //     TextStyle(fontSize: 14,
  //     color: Colors.white,
  //     fontWeight: FontWeight.bold))
  //      ],
  //    ),
     
  //    SizedBox(width: 24,),

  //    Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //     Text(name,style: 
  //     TextStyle(fontSize: 16,color: Colors.white),)
  //     ,Text("10 verses",style: 
  //     TextStyle(fontSize: 14,
  //     color: Colors.white,
  //     fontWeight: FontWeight.bold),)
  //    ],),
    
  //   Spacer()// bta5od el msa7a el fadya elle fnos
  //    ,Text(name,style: 
  //     TextStyle(fontSize: 16,
  //     color: Colors.white),)

  //  ],);
  }
} 