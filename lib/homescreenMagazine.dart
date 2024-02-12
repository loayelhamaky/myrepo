import 'package:flutter/material.dart';

class HomeScreenMagazine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        title: Text(
          'Magazine',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.indigoAccent,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'Magazines',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(width: 3),
          Expanded(
            child: Container(
              color: Colors.indigo,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'News',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildStack('Tech Magazine'),
                        _buildStack('Politics Magazine'),
                        _buildStack('Tech Magazine'),
                        _buildStack('Politics Magazine'),
                        _buildStack('Tech Magazine'),
                        _buildStack('Politics Magazine'),
                        // Add more stacks as needed
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStack(String text) {
    return Expanded(
      child: Container(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image(image: AssetImage('assets/images/img.png')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.indigoAccent,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 21),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
