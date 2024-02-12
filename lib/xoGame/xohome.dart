import 'package:flutter/material.dart';

import 'XOHomeScreen.dart';
/// مكروت الديزاين مش فاضي المهم الفكرة توصل (:

void main(){
  runApp(XOApp());
}
class XOApp extends StatelessWidget {
  String routeName = 'homescreen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: XOHomescreen(),
      routes: {
        routeName : (_) => XOHomescreen(),
      },
      initialRoute: routeName
    );
  }
}
