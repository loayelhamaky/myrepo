import 'dart:async';
import 'package:flutter/material.dart';
import 'homescreen.dart';

class SplaashScreen extends StatefulWidget {
  const SplaashScreen({super.key});
  static const String routeName = 'Splash';
  @override
  State<SplaashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplaashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, IslamyHomeScreen.routeName);
    });
  super.initState();

}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Image.asset('islami_myapp/assets/splash_screen_light.png',
            fit: BoxFit.cover),
      ),
    );
  }
}
