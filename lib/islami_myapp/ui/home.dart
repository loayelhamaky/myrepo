import 'package:flutter/material.dart';

import '../tabs/hadeth.dart';
import '../tabs/quran.dart';
import '../tabs/radio.dart';
import '../tabs/sebha.dart';
import 'homescreen.dart';
import 'splash.dart';

void main(){
  runApp(IslamyApp());
}
class IslamyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplaashScreen.routeName : (context) => SplaashScreen(),
        IslamyHomeScreen.routeName : (context) => IslamyHomeScreen(),
        QuranTabScreen.routeName : (context) => QuranTabScreen(),
        HadethTabScreen.routeName : (context) => HadethTabScreen(),
        RadioTabScreen.routeName : (context) => RadioTabScreen(),
        SebhaTabScreen.routeName : (context) => SebhaTabScreen(),
      },
      initialRoute: SplaashScreen.routeName,
    );
  }
}


