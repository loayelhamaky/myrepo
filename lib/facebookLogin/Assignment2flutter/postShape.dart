import 'package:flutter/material.dart';
class PostShape extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/user.jpeg'),
          ),
        ),
        Container(
          child: Column(
            children: [
              Text(
                'Owner',
                style: TextStyle(fontSize: 18),
              ),
              Row(
                children: [
                  Text('3h '),
                  CircleAvatar(
                    maxRadius: 7,
                    backgroundImage: AssetImage('assets/images/img_1.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],

    );
  }
}
