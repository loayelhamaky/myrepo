import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function passText;
  static int count = 0;
  Function checkWinner;
  Function IdWinner;

  Button({super.key, required this.text, required this.passText, required this.checkWinner
  , required this.IdWinner});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (text != '') return;
        count.isEven ? passText('x')  : passText('o');
         checkWinner();
         IdWinner();
        count++;
         },
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
