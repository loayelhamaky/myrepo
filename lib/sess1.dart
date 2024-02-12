import 'dart:ffi';
import 'package:flutter/material.dart';

void main() {
  String name = 'contact';
  name = 'Zeyad';
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          iconTheme: IconThemeData.fallback(),
          elevation: 30,
          //default value (shadow under appBar)
          leading: Icon(Icons.arrow_back_rounded),
          actions: [
            Icon(Icons.call),
            Icon(Icons.video_call),
            Icon(Icons.menu)
          ],
          title: Text(
            name,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
          ),
        ),
        body: Container(
          color: Colors.white38,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Align children at the center
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        color: Colors.blue,
                        child: Center(
                          // Center the text vertically and horizontally
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3), // Add a SizedBox with desired width
                    Expanded(
                      child: Container(
                        height: 50,
                        color: Colors.pink,
                        child: Center( // Center the text vertically and horizontally
                          child: Text(
                            'data',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 3),
                Container(
                  child: Row(


                children: [
                  Expanded(child: Container(
                    color: Colors.brown,
                  child: Text('hhhhhhh', style: TextStyle(fontSize: 20),),
                  )
                  ),
                  SizedBox(width: 3),
                  Expanded(child: Container(
                    color: Colors.pink,
                    child: Text('ddddddd', style: TextStyle(fontSize: 20)),
                  ))
                ],
              )
                )
            ],
          ),
        ),
      ),
    ),
  );
}
