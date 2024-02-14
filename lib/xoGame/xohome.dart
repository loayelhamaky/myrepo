import 'package:flutter/material.dart';
import 'package:untitled2/xoGame/splashScreen.dart';

import 'XOHomeScreen.dart';
/// مكروت الديزاين مش فاضي المهم الفكرة توصل (:

void main(){
  runApp(XOApp());
}
class XOApp extends StatelessWidget {
  static String routeName = 'homescreen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: XOHomescreen(),
      routes: {
        routeName : (_) => XOHomescreen(),
        SplashScreen.RouteName : (context) => SplashScreen()
      },
      initialRoute: SplashScreen.RouteName
    );
  }
}
