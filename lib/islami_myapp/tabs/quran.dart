import 'package:flutter/material.dart';
import '../colors/colors.dart';
import 'suras/suraTab.dart';
import 'suras/suras_verses.dart';

class QuranTabScreen extends StatefulWidget {
  static String routeName = 'quranTabScreen';
  @override
  State<QuranTabScreen> createState() => _QuranTabScreenState();
}

class _QuranTabScreenState extends State<QuranTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('islami_myapp/assets/main_background.png'),
            fit: BoxFit.cover, // Ensure the background image covers the whole screen
          ),
        ),
        child: Column(
          children: [
            buildUpperHomeScreenPhoto(),
            buildSuraNameAndVersesBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    SurasVerses.suraNames.length,
                        (index) => buildListItem(index),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }

   buildUpperHomeScreenPhoto() => Column(
    children: [
      SizedBox(height: 60),
      Image.asset('islami_myapp/assets/quran_header_image.png'),
    ],
  );
   buildSuraNameAndVersesBar() => Container(
        child: Column(
          children: [
            Container(
              height: 2,
              width: double.maxFinite,
              color: AppColors.orange,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'عدد الايات   ',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'اسم السورة',
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
                Container(
                  width: 2,
                  height: 50,
                  color: AppColors.orange,
                ),
              ],
            ),
            Container(
              height: 2,
              width: double.maxFinite,
              color: AppColors.orange,
            ),
          ],
        ),
      );
   buildListItem(int index) => Stack(
    alignment: Alignment.center,
    children: [
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, SuraTab.routeName,
              arguments:SuraArgs(SuraName:
              SurasVerses.suraNames[index], SuraContext: '${index+1}.txt') );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                "${SurasVerses.versesNumber[index]}",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                SurasVerses.suraNames[index],
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      Container(
        color: AppColors.orange,
        width: 2,
        height: 50,
        alignment: Alignment.center,
      ),
    ],
  );
}

class SuraArgs {
  String SuraName;
  String SuraContext;

  SuraArgs ({required this.SuraName , required this.SuraContext});
}