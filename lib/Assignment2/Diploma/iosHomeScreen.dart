import 'package:flutter/material.dart';
class IosHomeScreen extends StatelessWidget {

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
                  child: Image.asset('assets/images/IOS.jpeg')),
              Expanded(child:
              Container(
                margin: EdgeInsets.all(25),
                child: ListView(
                    children:[ Text('''
OOP refreshment

Crop

• Introduction

a. Installing OS X virtual machine

b. Installing Xcode and the inters

SDK

c. A guided tour of Color adjustment

d. An Introduction to Xcode playgrounds

• Swift Programming Language

a. Swift Data Types, Constants, and Variables

b. Swift Operators and Expressions

c. Swift Flow Control

d. The Swift Switch Statement

e. An Overview of Swift
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
