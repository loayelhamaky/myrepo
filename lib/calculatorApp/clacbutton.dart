import 'package:flutter/material.dart';
class CalcButton extends StatelessWidget {
  CalcButton({super.key, required this.digit , required this.onClicked});
  final String digit;
  final Function onClicked;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: () {
      onClicked(digit);},
        child: Text(digit));
  }
}
