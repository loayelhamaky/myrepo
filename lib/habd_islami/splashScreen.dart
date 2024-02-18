import 'dart:async';
import 'package:flutter/material.dart';
import 'IslamiHomeScreen.dart';
class SplashScreen extends StatefulWidget{
  static String RouteName = 'Splash';
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}
class SplashScreenState extends State{
  initState() {
    super.initState();
    Timer(Duration (seconds: 2) , () {
      Navigator.pushReplacementNamed(context, IslamiHomeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/images.png',fit: BoxFit.cover,);

  }
}