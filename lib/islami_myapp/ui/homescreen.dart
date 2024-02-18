import 'package:flutter/material.dart';

import '../colors/colors.dart';

class IslamyHomeScreen extends StatefulWidget {
  static String routeName = 'HomeScreen';

  @override
  State<StatefulWidget> createState() {
    return IslamyHomeScreenState();
  }
}

class IslamyHomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('islami_myapp/assets/main_background.png'),
            fit: BoxFit.cover, // Ensure the background image covers the whole screen
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 35,
              child: Column(
                children: [
                  SizedBox(height: 75),
                  Image.asset('islami_myapp/assets/quran_header_image.png'),
                ],
              ),
            ),
            Expanded(
              flex: 65,
              child: Container(
                child: Column(
                children: [
                  Container(
                    height: 2, width: double.maxFinite,color: AppColors.orange,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children:[
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('عدد الايات   ', style: TextStyle(fontSize: 25)),
                        Text('اسم السورة', style: TextStyle(fontSize: 25))
                      ],
                    ),
                      Container(
                        width: 2, height: 50, color: AppColors.orange,
                      ),
                    ]
                  ),

                  Container(
                    height: 2, width: double.maxFinite,color: AppColors.orange,
                  ),
                ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


