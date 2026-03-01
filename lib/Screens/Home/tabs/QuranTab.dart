import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home/widgets/RecentiTem.dart';
import 'package:flutter_application_1/Screens/Home/widgets/SuraItem.dart';
import 'package:flutter_application_1/core/appColors.dart';
import 'package:flutter_application_1/core/appStyles.dart';
import 'package:flutter_application_1/models/SuraModel.dart';

class Qurantab extends StatelessWidget{
   Qurantab({super.key});
List<String> suarNames = [
  "الفاتحة","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود","يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون","النور","الفرقان","الشعراء","النمل","القصص","العنكبوت",

  "الروم","لقمان","السجدة","الأحزاب","سبأ","فاطر","يس","الصافات","ص","الزمر","غافر","فصلت","الشورى","الزخرف","الدخان","الجاثية","الأحقاف","محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد",

  "المجادلة","الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج","نوح","الجن","المزمل","المدثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الانفطار","المطففين","الانشقاق","البروج",

  "الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح","التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر","الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
];
List<String> surahNamesEnglish = [
  "Al-Fatihah","Al-Baqarah","Aal-E-Imran","An-Nisa","Al-Ma'idah","Al-An'am","Al-A'raf","Al-Anfal","At-Tawbah","Yunus","Hud","Yusuf","Ar-Ra'd","Ibrahim","Al-Hijr","An-Nahl","Al-Isra","Al-Kahf","Maryam","Ta-Ha","Al-Anbiya","Al-Hajj","Al-Mu'minun","An-Nur","Al-Furqan","Ash-Shu'ara","An-Naml","Al-Qasas","Al-Ankabut",
  "Ar-Rum","Luqman","As-Sajdah","Al-Ahzab","Saba","Fatir","Ya-Sin","As-Saffat","Sad","Az-Zumar","Ghafir","Fussilat","Ash-Shura","Az-Zukhruf","Ad-Dukhan","Al-Jathiyah","Al-Ahqaf","Muhammad","Al-Fath","Al-Hujurat","Qaf","Adh-Dhariyat","At-Tur","An-Najm","Al-Qamar","Ar-Rahman","Al-Waqi'ah","Al-Hadid",
  "Al-Mujadila","Al-Hashr","Al-Mumtahanah","As-Saff","Al-Jumu'ah","Al-Munafiqun","At-Taghabun","At-Talaq","At-Tahrim","Al-Mulk","Al-Qalam","Al-Haqqah","Al-Ma'arij","Nuh","Al-Jinn","Al-Muzzammil","Al-Muddaththir","Al-Qiyamah","Al-Insan","Al-Mursalat","An-Naba","An-Nazi'at","Abasa","At-Takwir","Al-Infitar","Al-Mutaffifin","Al-Inshiqaq","Al-Buruj",
  "At-Tariq","Al-A'la","Al-Ghashiyah","Al-Fajr","Al-Balad","Ash-Shams","Al-Layl","Ad-Duha","Ash-Sharh","At-Tin","Al-Alaq","Al-Qadr","Al-Bayyinah","Az-Zalzalah","Al-Adiyat","Al-Qari'ah","At-Takathur","Al-Asr","Al-Humazah","Al-Fil","Quraysh","Al-Ma'un","Al-Kawthar","Al-Kafirun","An-Nasr","Al-Masad","Al-Ikhlas","Al-Falaq","An-Nas"
];
 List<int> surahVerses = [
  7,286,200,176,120,165,206,75,129,109,123,111,43,52,99,128,111,110,98,135,112,78,118,64,77,227,93,88,69,
  60,34,30,73,54,45,83,182,88,75,85,54,53,89,59,37,35,38,29,18,45,60,49,62,55,78,96,29,
  22,24,13,14,11,11,18,12,12,30,52,52,44,28,28,20,56,40,31,50,40,46,42,29,19,36,25,22,
  17,19,26,30,20,15,21,11,8,8,19,5,8,8,11,11,8,3,9,5,4,7,3,6,3,5,4,5,6
];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:
         AssetImage("assets/images/QuranBg.png"), fit:BoxFit.fill,)
      ),

child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(
      height: 192,
    ),
    TextField( cursorColor: AppColors.primary,
 style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
color: Colors.white
    ),
      decoration: InputDecoration(
      prefixIcon: ImageIcon(
        AssetImage("assets/images/ic_quran.png"),
        color: AppColors.primary,),
      hintText: "Sura Name",
        focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(
    color: AppColors.primary
  ),
  borderRadius: BorderRadius.circular(16)
),
      enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(
    color: AppColors.primary
  ),
  borderRadius: BorderRadius.circular(16)
)
      ),
    )
      ,SizedBox(
      height: 20,
    ),
Text("Most Recently",style:TextStyle(
  fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold
  )),
  SizedBox(height: 10,),
 
SizedBox( height: 155,
  child: ListView.separated(
    separatorBuilder: (context, index) => SizedBox(width: 12,),
    itemCount: 10,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context,index){
    return  Recentitem(model : Suramodel(name: suarNames[index],surahNamesEnglish: surahNamesEnglish[index],surahVerses: surahVerses[index], surahIndex: index+1)); ///most recently itemmmm
  }),
)
   ,SizedBox(height: 10,),
   Text("Suras list",style:TextStyle(
  fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold
  )),
  SizedBox(height: 10,),
 Expanded(
   child: ListView.separated(
    separatorBuilder: (context, index) => 
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Divider( //el line el fasl
        color: Colors.white,
        endIndent: 44,indent: 44, //el msafat el fe awl w a5r el line
      ),
    ),
    itemCount: suarNames.length,
    itemBuilder: (context,index){
   return Suraitem(model : Suramodel(name: suarNames[index],surahNamesEnglish: surahNamesEnglish[index],surahVerses: surahVerses[index], surahIndex: index+1));
   }),
 )
 
 
  ],
),

    );
  }

}