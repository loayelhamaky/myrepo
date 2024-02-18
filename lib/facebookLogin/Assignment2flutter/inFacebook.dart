import 'package:flutter/material.dart';

import 'post.dart';
import 'storyStack.dart';
// import 'package:untitled2/facebookLoginAssignment2flutter/post.dart';
// import 'package:untitled2/facebookLoginAssignment2flutter/postShape.dart';
// import 'package:untitled2/facebookLoginAssignment2flutter/reactions.dart';
// import 'package:untitled2/facebookLoginAssignment2flutter/storyStack.dart';

class InFacbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Home'),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              StoryStack(),
              StoryStack(),
              StoryStack(),
              StoryStack(),
            ],
          ),
          Post(likes: '34', comments: '55'),
          Post(comments: '2', likes: '20'),
          Post(likes: '4400', comments: '330'),
          Post(likes: '70', comments: '40'),
          Post(comments: '20', likes: '250'),

        ],
      ),
    ),
  );
}
