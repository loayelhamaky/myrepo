import 'package:flutter/material.dart';
import 'package:untitled2/btn/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }

}
class MyHomePageState extends State{
int res = 0;
int res2 = 0;
int numm=0;
int nym = 0;
  void onnumclick() {

    setState(() {

    });
     numm ++;

  }
void onnymclick() {

  setState(() {

  });
   nym ++;

}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
            child: Column(
              children: [
                Homebtn(num: numm, numclick: onnumclick),
                Homebtn(num: nym, numclick:onnymclick,),
              ],
            )
        ),


    );
  }

}

