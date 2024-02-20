import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../tabs/hadeth.dart';
import '../tabs/quran.dart';
import '../tabs/radio.dart';
import '../tabs/sebha.dart';

class IslamyHomeScreen extends StatefulWidget {
  static String routeName = 'HomeScreen';
  @override
  State<StatefulWidget> createState() {
    return IslamyHomeScreenState();
  }
}

class IslamyHomeScreenState extends State {
  Widget currentTab = QuranTabScreen();
  static int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentTab,
      bottomNavigationBar: buildButtomNavigationBar(),
    );
  }
  Theme buildButtomNavigationBar() => Theme(
    data: ThemeData(canvasColor: AppColors.orange),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(label: 'quran',icon: ImageIcon(AssetImage('islami_myapp/assets/quran_ic.png'),size: 33,)),
        BottomNavigationBarItem(label: 'radio',icon: ImageIcon(AssetImage('islami_myapp/assets/radio_ic.png'),size: 33)),
        BottomNavigationBarItem(label: 'sebha',icon: ImageIcon(AssetImage('islami_myapp/assets/sebha_ic.png'),size: 33)),
        BottomNavigationBarItem(label: 'hadeth',icon: ImageIcon(AssetImage('islami_myapp/assets/hadeth_ic.png'),size: 33)),
      ],
      currentIndex: currentTabIndex,
      onTap:(index){currentTabIndex = index;
      if (index == 0) {currentTab = QuranTabScreen();}
      else if (index == 1) {currentTab = RadioTabScreen();}
      else if (index == 2) {currentTab = SebhaTabScreen();}
      else if (index == 3) {currentTab = HadethTabScreen();}
      setState(() {});},
      selectedItemColor: Colors.black,unselectedItemColor: Colors.white,
    ),
  );
}
