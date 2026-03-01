import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/tabs/QuranTab.dart';
import 'package:flutter_application_1/Screens/Home/tabs/RadioTab.dart';
import 'package:flutter_application_1/Screens/Home/tabs/SebhaTab.dart';
import 'package:flutter_application_1/Screens/Home/tabs/TimeTab.dart';
import 'package:flutter_application_1/Screens/Home/tabs/hadethTab.dart';
import 'package:flutter_application_1/core/appColors.dart';

 class HomeScreen extends StatefulWidget{
   const HomeScreen({super.key});
static const String routeName="Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedTap=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary, //color only appears if it the type is fixed
        type: BottomNavigationBarType.shifting, // fixed or shifting (icon btt7rk lma aselected)
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white, //first icon color
        unselectedItemColor: Colors.black,//second
        currentIndex:selectedTap , //if 0 first is selected if 1 second is
        onTap: (value){
          selectedTap=value; //if the icon is selected but its index 
          setState(() {  });
        },
        items: [
       BottomNavigationBarItem(
        backgroundColor: AppColors.primary,
        icon:  getBottomNavigationBar("ic_quran",0)   // :else do this line
          , label:"Quran"),               
       BottomNavigationBarItem(
        backgroundColor: AppColors.primary,
        icon:getBottomNavigationBar("ic_hadeth",1)  
         , label:"Hadeth"),
       BottomNavigationBarItem(
        backgroundColor: AppColors.primary,
        icon: getBottomNavigationBar("ic_sebha",2)  
         , label:"sbha"),
       BottomNavigationBarItem(
        backgroundColor: AppColors.primary,
        icon:  getBottomNavigationBar("ic_radio",3)  , 
        label:"Radio"),
       BottomNavigationBarItem(
        backgroundColor: AppColors.primary,
        icon: getBottomNavigationBar("ic_time",4) ,
        label:"Time"),
      ]),
      body:Stack(
        alignment: Alignment.topCenter,
        children: [
         tabs[selectedTap], //will call the class w that index
        Image.asset("assets/images/Top.png")
        ],
      )
       
    );
  }
  List<Widget> tabs=[
    Qurantab(), // mtrtbyen 3la 7asb trtyb el icons
    Hadethtab(),//3shan yb'w the same index fe acess
    Sebhatab(),
    Radiotab(),
    Timetab()
  ];

  Widget getBottomNavigationBar(String imageName,int index){
    return   selectedTap==index?       Container( //if the icon is selected
          padding: EdgeInsets.symmetric(horizontal: 12,vertical:2 ),
          decoration: BoxDecoration(
            color:Colors.black12,
            borderRadius: BorderRadius.circular(24),
          ),
          child: ImageIcon(AssetImage("assets/images/$imageName.png")))
           :ImageIcon(AssetImage("assets/images/ic_time.png"));
}}