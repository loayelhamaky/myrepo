import 'package:flutter/material.dart';

class FacebookLoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: Center(
        child: Column(
          children: [
            Spacer(
              flex: 20,
            ),
            Container(
              width: 70,
              height: 70,
              child: Image.asset('assets/images/images.png'),
            ),
            Spacer(
              flex: 5,
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white.withOpacity(0.4)),
                  ),
                  hintText: '  Email or Phone',
                ),
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, color: Colors.white.withOpacity(0.4)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white.withOpacity(0.4)),
                  ),
                  hintText: '  Password',
                ),
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, color: Colors.red),
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Row(
              children: [
                Spacer(flex: 8),
                Expanded(
                  flex: 84,
                  child: Container(
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white.withOpacity(0.4), // Background color with 30% opacity
                        ),
                      ),
                      child: Text(
                        'LOG IN',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'infacebook');
                      },
                    ),
                  ),
                ),
                Spacer(flex: 8),
              ],
            ),
            Spacer(
                flex: 20),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.transparent, // Set background color to transparent
                ),
              ),
              onPressed: () {},
              child: Container(
                height: 35,
                alignment: Alignment.center,
                child: Text(
                  'Sign up for facebook',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.transparent, // Set background color to transparent
                ),
              ),
              onPressed: () {},
              child: Container(
                height: 35,
                alignment: Alignment.center,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Spacer(
                flex: 7),
          ],
        ),
      ),
    );
  }
}
