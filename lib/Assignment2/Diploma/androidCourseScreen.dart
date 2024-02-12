import 'package:flutter/material.dart';
class AndroidCourseScreen extends StatelessWidget {

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
                  child: Image.asset('assets/images/Android.jpeg')),
              Expanded(child:
              Container(
                margin: EdgeInsets.all(25),
                child: ListView(
                  children:[ Text('''
Part 1 (Java SE)

1. Introduction to Java Programming

• Overview.

• Compiler and JVM

• Project Structure

Hello World Application

• Variables and Data types

• Operators

Conditional statements (IF- Switch)

Loops (For-While - Do While)

2. Basics

. nested loops

. Strings

. Arrays
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
