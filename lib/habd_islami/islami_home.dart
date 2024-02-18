import 'package:flutter/material.dart';

import '../xoGame/splashScreen.dart';
import 'IslamiHomeScreen.dart';
void main (){
  runApp(Islami());
}
class Islami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.RouteName :(context) => SplashScreen(),
        IslamiHomeScreen.routeName : (context) => IslamiHomeScreen(),
      } ,
      initialRoute: SplashScreen.RouteName,
      home: IslamiHomeScreen(),
    );
  }
}
