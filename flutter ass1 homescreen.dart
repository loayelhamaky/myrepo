import 'package:flutter/material.dart';

class HomescreenWhatsappApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Handle onPressed event
              },
            ),
          ],
        ),
        title: Row(
          children: [
            Container(
              child: CircleAvatar(
                radius: 21.5,
                backgroundImage: AssetImage(
                    'assets/images/Users/M/OneDrive/Pictures/person.jpg'),
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Text(
                'Person',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Icon(Icons.call),
            SizedBox(width: 17),
            Icon(Icons.video_call),
            SizedBox(width: 17),
            Icon(Icons.more_vert),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: double.maxFinite,
                  child: Image.asset(
                    'assets/images/Users/M/OneDrive/Pictures/background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/images/img.png'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 60,
                            margin: EdgeInsets.symmetric(vertical: 30.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                            ),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: 'This is my first message...',
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 60),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 60),
                              Expanded(
                                child: Container(
                                  height: 60,
                                  margin: EdgeInsets.symmetric(vertical: 30.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: 'This is my second message...',
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(20),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(20),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/img_2.png'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(

                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                            ),
                            child: TextField(

                              style: TextStyle(color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                icon: Padding(
                                  padding: const EdgeInsets.all(13),
                                  child: Icon(
                                    Icons.emoji_emotions_outlined,
                                  color: Colors.white, size: 30,),
                                ),
                                hintText: 'Type a message',
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(20),
                                suffixIcon:
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Icon(Icons.attach_file, color: Colors.white, size: 30,),
                                ),


                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white38, // Adjust border color as needed
                              width: 3,  // Adjust border width as needed
                            ),
                          ),
                          child: Icon(
                            Icons.mic,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),


                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
