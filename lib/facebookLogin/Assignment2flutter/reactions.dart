import 'package:flutter/material.dart';
class Reactions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      height: 30,
      child: Row(
        children: [
          Column(
            children: [
              Expanded(

                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Image.asset('assets/images/singleLike.jpg'),
                    SizedBox(width: 25,),
                    Text('Like'),
                    SizedBox(width: 25,),
                  ],
                ),
              )
            ],
          ), Column(
            children: [
              Expanded(

                child: Row(
                  children: [
                    Image.asset('assets/images/comment.jpg'),
                    SizedBox(width: 25,),
                    Text('comment'),
                    SizedBox(width: 25,),
                  ],
                ),
              )
            ],
          ), Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset('assets/images/share.png'),
                    SizedBox(width: 25,),
                    Text('share'),

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
