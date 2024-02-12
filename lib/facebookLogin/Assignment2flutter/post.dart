import 'package:flutter/material.dart';
import 'package:untitled2/facebookLogin/Assignment2flutter/postShape.dart';
import 'package:untitled2/facebookLogin/Assignment2flutter/reactions.dart';
// import 'package:untitled2/facebookLoginAssignment2flutter/reactions.dart';
class Post extends StatelessWidget {
String likes;
String comments;
Post({required this.likes,required this.comments});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children :[
      PostShape(),
        SizedBox(height: 17),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerLeft,
          child: Text('My Post', style: TextStyle(fontSize: 26)),
        ),
        SizedBox(height: 25),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child: Text(
                likes,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 20,
              child: Image.asset('assets/images/like.jpg'),
            ),
            Spacer(flex: 15),
            Container(
              margin: EdgeInsets.all(12),
              child: Text(
                '$comments comments',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
        SizedBox(height: 25,),
        Divider(
          height: 8,
          color: Colors.black,
        ),
        Reactions(),
        Divider(
          height: 20,
          color: Colors.black,
        ),
        SizedBox(height: 30,),
        /////////////////

      ]
      )

    );
  }
}
