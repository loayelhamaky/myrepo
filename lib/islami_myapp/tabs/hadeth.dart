import 'package:flutter/material.dart';
import '../colors/colors.dart';
import 'hadeth_tab/hadethTab.dart';

class HadethTabScreen extends StatelessWidget {
  static String routeName = 'hadeth';
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
            buildUpperHomeScreenPhoto(),
            buildHadethBar(),
            buildHadethListView()
          ],
        ),
      ),
    );
  }

  Widget buildUpperHomeScreenPhoto() => Column(
    children: [
      SizedBox(height: 60),
      Image.asset('islami_myapp/assets/quran_header_image.png'),
    ],
  );
  Widget buildHadethBar() => Column(
    children: [
      Container(
        height: 2,
        width: double.maxFinite,
        color: AppColors.orange,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'الاحاديث  ',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
      Container(
        height: 2,
        width: double.maxFinite,
        color: AppColors.orange,
      ),
    ],
  );
  Widget buildHadethListView() => Expanded(
    child: ListView.builder(
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.pushNamed(context, HadethTab.routeName);
        },
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  ' الحديث رقم  ${index+1}', // Use the correct hadith based on the index
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
      itemCount: 50, // Set itemCount to the length of the hadiths list
    ),
  );
}
