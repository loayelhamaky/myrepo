import 'package:flutter/material.dart';
import 'package:untitled2/Assignment2/Diploma/androidCourseScreen.dart';
import 'package:untitled2/habd.dart';
class RouteAppHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(backgroundColor: Colors.blue[900],
  title: Text('RouteAppOne'),
),
  body: Column(
    children: [
      Expanded( flex: 33,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset('assets/images/Android.jpeg'),
                    )
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: ElevatedButton(
                        style: ButtonStyle( backgroundColor:
                        MaterialStatePropertyAll(Colors.blue[900])),
                          child: Text('ANDROID COURSE',),
                      onPressed: () {
                        Navigator.pushNamed(context, 'AndroidCourseScreen');
                      } ),
                    ),
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            )
          ],
        ),
      ),
      Expanded( flex: 33,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset('assets/images/IOS.jpeg'),
                    )
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor:
                        MaterialStatePropertyAll(Colors.blue[900])),
                          child: Text('IOS COURSE',),
                          onPressed: () {
                            Navigator.pushNamed(context, 'IosHomeScreen');
                          } ),
                    ),
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            )
          ],
        ),
      ),
      Expanded( flex: 33,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset('assets/images/fullStack.jpeg'),
                    )
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: 
                        MaterialStatePropertyAll(Colors.blue[900])),
                          child: Text('FULL STACK',),
                          onPressed: () {
                            Navigator.pushNamed(context, 'FullStackHomeScreen');
                          } ),
                    ),
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            )
          ],
        ),
      ),

  ],
  ),
);
  }
}
