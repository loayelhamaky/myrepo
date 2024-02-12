import 'package:flutter/material.dart';
class StoryStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 18,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/images/facebookStory.jpg'),
            ),
          ),
          Container(
              margin: EdgeInsets.all(8),
              child: CircleAvatar(backgroundImage: AssetImage('assets/images/user.jpeg'),)),

          Positioned( bottom: 10,left: 20,right: 0,
            child: Text ('Owner', style: TextStyle(color: Colors.white,
                fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
