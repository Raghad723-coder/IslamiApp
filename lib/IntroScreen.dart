import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/HomeScreen.dart';
import 'package:flutter_application_1/core/appColors.dart';
import 'package:flutter_application_1/core/appStyles.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
 static const String routeName="Intro";
   IntroScreen({super.key});


var listPagesViewModel=[
PageViewModel(
  titleWidget: Text("Welcome To Islami App",style:AppStyles.titleStyle,
  ),
 body: "",
  image: Image.asset("assets/images/Frame 3.png"),
),
PageViewModel(
  titleWidget: Text("Welcome To Islami",style:AppStyles.titleStyle,
  ),
bodyWidget: Text("We Are Very Excited To Have You In Our Community"
,style: AppStyles.bodyStyle,
textAlign:TextAlign.center,),

  image: Image.asset("assets/images/Frame 4.png"),
),
PageViewModel(
   titleWidget: Text( "Reading the Quran",style:AppStyles.titleStyle,
  ),
bodyWidget: Text("Read, and your Lord is the Most Generous"
,style: AppStyles.bodyStyle,
textAlign:TextAlign.center,),
 
  image: Image.asset("assets/images/Frame 5.png"),
),
PageViewModel(
     titleWidget: Text( "Bearish",style:AppStyles.titleStyle,
  ),
bodyWidget: Text("Praise the name of your Lord, the Most High"
,style: AppStyles.bodyStyle,
textAlign:TextAlign.center,),

 image: Image.asset("assets/images/Frame 6.png"),
),
PageViewModel(
       titleWidget: Text( "Holy Quran Radio",style:AppStyles.titleStyle,
  ),
  bodyWidget: Text("You can listen to the Holy Quran Radio through the application for free and easily"
,style: AppStyles.bodyStyle,
textAlign:TextAlign.center,),
 
 image: Image.asset("assets/images/Frame 7.png"),
),



];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xFF202020),
    pages: listPagesViewModel,
    showNextButton: false,
    bodyPadding: EdgeInsets.only(top: 228),
    globalHeader: Image.asset("assets/images/Top.png"),
    skip: Text("skip",style: AppStyles.bodyStyle,),
     showSkipButton: true,
onSkip: (){
  Navigator.pushNamed(context, HomeScreen.routeName);
},
 back: Icon(Icons.arrow_back_ios,color: AppColors.primary,),
 showBackButton: true,
  done:  Text("Done",style: AppStyles.bodyStyle,),
  onDone: () {
    // On button pressed go the home screennn
    Navigator.pushNamed(context, HomeScreen.routeName);
  },
  dotsDecorator: DotsDecorator(
    color: AppColors.grey,
    activeColor: AppColors.primary,
    activeShape: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
    activeSize: Size(18, 7)
  ),
);
  }
}