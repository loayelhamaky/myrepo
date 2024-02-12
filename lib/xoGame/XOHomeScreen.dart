import 'package:flutter/material.dart';
import 'package:untitled2/xoGame/buttonsXO.dart';

class XOHomescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return XOHomescreenState();
  }
}

class XOHomescreenState extends State {
  String winner = '';
  clearDisplay() {
    setState(() {
      inputs = ['', '', '', '', '', '', '', '', ''];
    });
  }
  bool checkTheWinner() {
    // Rows
    for (int i = 0; i < 9; i += 3) {
      if (inputs[i] != '' && inputs[i] == inputs[i + 1] && inputs[i] == inputs[i + 2]) {
        winner = inputs[i];
        print(inputs[i]);
        clearDisplay();
        return true;
      }
    }

    // Columns
    for (int i = 0; i < 3; i++) {
      if (inputs[i] != '' && inputs[i] == inputs[i + 3] && inputs[i] == inputs[i + 6]) {
        winner = inputs[i];
        clearDisplay();
        return true;


      }
    }

    // Diagonals
    if (inputs[0] != '' && inputs[0] == inputs[4] && inputs[0] == inputs[8]) {
      winner = inputs[0];
      clearDisplay();
      return true;
    } else if (inputs[2] != '' && inputs[2] == inputs[4] && inputs[2] == inputs[6]) {
      winner = inputs[2];
      clearDisplay();
      return true;
    }

    return false;
  }
  void identifyWinner() {

    setState(() {
      print(winner);
      if (winner == 'x') {
        counter1++;
        winner = '';
      } else if (winner == 'o') {
        counter2++;
        winner = '';
      }
      else if (!inputs.contains('') && winner == '') {clearDisplay();}
    });
  }


  int counter1 = 0;
  int counter2 = 0;
 List<String> inputs = ['', '','', '','', '','', '','',];
  void texttake1(String newInput) {setState(() {inputs[0] = newInput;});}
  void texttake2(String newInput) {setState(() {inputs[1] = newInput;});}
  void texttake3(String newInput) {setState(() {inputs[2] = newInput;});}
  void texttake4(String newInput) {setState(() {inputs[3] = newInput;});}
  void texttake5(String newInput) {setState(() {inputs[4] = newInput;});}
  void texttake6(String newInput) {setState(() {inputs[5] = newInput;});}
  void texttake7(String newInput) {setState(() {inputs[6] = newInput;});}
  void texttake8(String newInput) {setState(() {inputs[7] = newInput;});}
  void texttake9(String newInput) {setState(() {inputs[8] = newInput;});}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('XO game'))),
      body: Column(
        children: [
          Expanded(
            flex: 20,
            child: Container(),
          ),
          Expanded(
            flex: 15,
            child: Container(
              child: Text(
                'player one(x) : ${counter1}',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      'player two(o) : ${counter2}',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                Expanded(child: ElevatedButton(child: Text('clear display', style:
                TextStyle(fontSize: 29)),onPressed:
                  () {
                  counter1 = 0; counter2 = 0;
                    clearDisplay();
                  },))
              ],
            ),
          ),
          Expanded(
            flex: 50,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, style: BorderStyle.none),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Button(text: inputs[0], passText: texttake1, checkWinner: checkTheWinner, IdWinner: identifyWinner)),
                      Expanded(child: Button(text: inputs[1], passText: texttake2, checkWinner: checkTheWinner,IdWinner: identifyWinner)),
                      Expanded(child: Button(text: inputs[2], passText: texttake3, checkWinner: checkTheWinner,IdWinner: identifyWinner)),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Button(text: inputs[3], passText: texttake4, checkWinner: checkTheWinner,IdWinner: identifyWinner)),
                      Expanded(child: Button(text: inputs[4], passText: texttake5, checkWinner: checkTheWinner,IdWinner: identifyWinner)),
                      Expanded(child: Button(text: inputs[5], passText: texttake6, checkWinner: checkTheWinner,IdWinner: identifyWinner)),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Button(text: inputs[6], passText: texttake7, checkWinner: checkTheWinner,IdWinner: identifyWinner)),
                      Expanded(child: Button(text: inputs[7], passText: texttake8, checkWinner: checkTheWinner,IdWinner: identifyWinner)),
                      Expanded(child: Button(text: inputs[8], passText: texttake9, checkWinner: checkTheWinner,IdWinner: identifyWinner)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}