import 'package:flutter/material.dart';
import 'package:untitled2/Assignment2/Diploma/androidCourseScreen.dart';
import 'package:untitled2/Assignment2/Diploma/iosHomeScreen.dart';
import 'package:untitled2/Assignment2/Diploma/routeAppHomeScreen.dart';

import 'fullStackHomeScreen.dart';
void main(){
  runApp(RouteAppOne());
}

class RouteAppOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => RouteAppHomeScreen(),
        'AndroidCourseScreen' : (context) => AndroidCourseScreen(),
        'IosHomeScreen' : (context) => IosHomeScreen(),
        'FullStackHomeScreen' : (context) => FullStackHomeScreen(),
      },
      initialRoute: '/', // Set the initial route
    );
  }
}
