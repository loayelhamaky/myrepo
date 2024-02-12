import 'package:flutter/material.dart';
class FullStackHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('RouteAppOne'),
    backgroundColor: Colors.blue[900]),
    body: Stack(
    children: [
    Container( height: double.maxFinite,
    child:
    Expanded(child:
    Image.asset('assets/images/Bg.jpg', fit: BoxFit.cover,)
    ),

    ),
    Column(
    children: [
    Container(
    margin: EdgeInsets.all(20),
    child: Image.asset('assets/images/fullStack.jpeg')),
    Expanded(child:
    Container(
    margin: EdgeInsets.all(25),
    child: ListView(
    children:[ Text('''
•HTML

•HTML 5

CSS

-CSS3

•SASS

•Bootstrap 4

JavaScript

•Regular expressions

-ECMAScript 6

•JQuery

.angular 7

.fabric.js

.AJAX

.JSON

.Hosting and domains

.Freelancing tips and tricks
''', style: TextStyle(color: Colors.white, fontSize: 25)),
    ] ),
    )
    )
    ],
    )


    ],
    ),
    );
  }
}
