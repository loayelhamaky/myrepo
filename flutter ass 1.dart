import 'package:flutter/material.dart';
import 'package:untitled2/ass1/flutter%20ass1%20homescreen.dart';
// import 'package:untitled2/homescreenMagazine.dart';

void main (){
  runApp(WhatsappApp());
}
class WhatsappApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
return MaterialApp(
  home: HomescreenWhatsappApp(),
);
  }

}