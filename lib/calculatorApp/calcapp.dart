import 'package:flutter/material.dart';
import 'calcHomeScreen.dart';
import 'clacbutton.dart';
void main() {

  runApp( const MyAPPP(
  ) );
}
class MyAPPP extends StatelessWidget {
  const MyAPPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        CalcApp.routeName : (_) =>  const CalcApp(),
        CalcApp.appRouteName :  (_) => CalcHomeScreen(),
      },
      initialRoute: CalcApp.routeName,
    );
  }
}


class CalcApp extends StatefulWidget{
  static const String routeName = 'home';
  static const String appRouteName = 'app';

  const CalcApp({super.key});
  @override
  State<StatefulWidget> createState() => CalcHomeScreenState();

}
class CalcHomeScreenState extends State {
  String res = '0';
   void onBtnClick(String digit){
    res = digit;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body:  Column(
        children: [
          Expanded(flex: 25,
            child: Container(
              margin: EdgeInsets.all(20),
                alignment: Alignment.bottomRight,
                child: Text(res ,style: TextStyle(fontSize: 40),)),
          ),

          Expanded(flex: 75,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(child: Container(
                              margin: EdgeInsets.all(5),
                              height: double.maxFinite,
                              child: ElevatedButton(onPressed: () {
                                onBtnClick('7');},
                                  child: Text('7')))),
                          Expanded(child: Container(
                              margin: EdgeInsets.all(5),
                              height: double.maxFinite,
                              child: CalcButton(digit: '8',onClicked: onBtnClick))),
                          Expanded(child: Container(
                              margin: EdgeInsets.all(5),
                              height: double.maxFinite,
                              child: CalcButton(digit: '9',onClicked: onBtnClick))),
                          Expanded(child: Container(
                              margin: EdgeInsets.all(5),
                              height: double.maxFinite,
                              child: CalcButton(digit: '+',onClicked: onBtnClick))),




                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '4',onClicked: onBtnClick))),
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '5',onClicked: onBtnClick))),
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '6',onClicked: onBtnClick))),
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '-',onClicked: onBtnClick))),



                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '1',onClicked: onBtnClick))),
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '2',onClicked: onBtnClick))),
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '3',onClicked: onBtnClick))),
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '*',onClicked: onBtnClick))),


                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '.',onClicked: onBtnClick))),
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '0',onClicked: onBtnClick))),
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '=',onClicked: onBtnClick))),
                        Expanded(child: Container(
                            margin: EdgeInsets.all(5),
                            height: double.maxFinite,
                            child: CalcButton(digit: '/',onClicked: onBtnClick))),


                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      )
    );
  }
}

