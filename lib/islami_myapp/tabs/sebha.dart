import 'package:flutter/material.dart';

import '../colors/colors.dart';

class SebhaTabScreen extends StatefulWidget {

  static String routeName = 'Sebha';
  @override
  State<SebhaTabScreen> createState() => _SebhaTabScreenState();
}

class _SebhaTabScreenState extends State<SebhaTabScreen> {
  List<String> tasbeehPhotos = ['islami_myapp/assets/tasbeeh.png',
    'islami_myapp/assets/tasbeeh2.jpg',
    'islami_myapp/assets/tasbeeh3.png',
    'islami_myapp/assets/tasbeeh4.png'];
  int number = 0;
  int counter = 0;
  List<String> tasbehat = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'لا اله الا الله'
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('islami_myapp/assets/main_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            buildUpperHomeScreenPhoto(),
            Expanded(
              flex: 57,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Text(
                            'عدد التسبيحات', style: TextStyle(fontSize: 30),))
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.brown
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text('$number', style: TextStyle(fontSize: 30),))
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius
                              .circular(30),
                            color: AppColors.orange,
                          ),
                          padding: EdgeInsets.all(15),
                          child: Text('${tasbehat[index]}',
                            style: TextStyle(fontSize: 30),))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildUpperHomeScreenPhoto() {
    return Expanded(
      flex: 80,
      child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
                height: 250, width: 250,
                child: Image.asset(
                  tasbeehPhotos[index], fit: BoxFit.cover,)),
            Container(
                width: 248, height: 248,
                child: ElevatedButton(
                    style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.transparent),
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent)),
                    onPressed: () {
                  number++;
                  counter ++;
                  if (counter == 33){index ++; }
                  else if (counter == 66) {index ++;}
                  else if (counter == 99) {index ++;}
                  else if (counter == 100) {counter = 0;index = 0;}
                  
                  setState(() {

                  });
                }, child: Container())),


          ]),
    );
  }

}