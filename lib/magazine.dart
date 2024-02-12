import 'package:flutter/material.dart';
import 'package:untitled2/homescreenMagazine.dart';

void main (){
  runApp(MagazineApp());
}

class MagazineApp extends StatelessWidget {
  // const MagazineApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Wrap with MaterialApp
      home: HomeScreenMagazine(),
    );
  }
}

