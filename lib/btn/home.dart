import 'package:flutter/material.dart';
class Homebtn extends StatelessWidget {
   Homebtn({super.key,required this.num,required this.numclick});
int num ;
Function numclick;
  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       ElevatedButton(onPressed: () {
         numclick();
       }, child: Text('$num', style: const TextStyle(fontSize: 40),))
     ],
   );
  }
}
