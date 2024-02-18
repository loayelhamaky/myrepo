import 'package:flutter/material.dart';

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
      },
      initialRoute: SplaashScreen.routeName,
    );
  }
}


