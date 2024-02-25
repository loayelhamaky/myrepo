import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../quran.dart';
class SuraTab extends StatefulWidget {
  static String routeName = 'SuraTab';
  @override
  State<SuraTab> createState() => _SuraTabState();
}

class _SuraTabState extends State<SuraTab> {
  String fileContent = '';
  late SuraArgs args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraArgs;
    readSuraFile(args.SuraContext);
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 60),
              child: Text(
                '{ سورة ${args.SuraName} }',
                style: TextStyle(fontSize: 35),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(right: 30, left: 30, bottom: 30),
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        '$fileContent',
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> readSuraFile(String fileName) async {
    if (fileContent.isEmpty) {
      fileContent = await rootBundle.loadString('islami_myapp/assets/files/$fileName');
      List<String> fileLines = fileContent.split("\n");
      for (int i = 0; i < fileLines.length; i++) {
        fileLines[i] += ' {${i + 1}} ';
      }
      fileContent = fileLines.join('');
      setState(() {});
    }
  }
}
