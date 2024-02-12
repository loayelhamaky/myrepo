import 'package:flutter/material.dart';
import 'package:untitled2/login/register.dart';
import 'package:untitled2/login/loginscreen.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomeScreen(),
        '/register': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
      },
      initialRoute: '/',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:  Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Go to Login'),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/register');
              }, child: Text('go to registerrr')),
              Image.asset('assets/images/IOS.jpeg')
            ],
          ),
      ),

    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:untitled2/login/register.dart';
// import 'package:untitled2/login/loginscreen.dart';
//
// void main() {
//   runApp(LoginApp());
// }
//
// class LoginApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         '/': (context) => HomeScreen(),
//         '/register': (context) => RegisterScreen(),
//         '/login': (context) => LoginScreen(),
//       },
//       initialRoute: '/',
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             CourseButton(
//               title: 'Register',
//               onPressed: () {
//                 Navigator.pushNamed(context, '/register');
//               },
//             ),
//             SizedBox(height: 20),
//             CourseButton(
//               title: 'Login',
//               onPressed: () {
//                 Navigator.pushNamed(context, '/login');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class CourseButton extends StatelessWidget {
//   final String title;
//   final Function onPressed;
//
//   const CourseButton({
//     required this.title,
//     required this.onPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton.icon(
//       onPressed: () => onPressed(),
//       icon: Icon(Icons.arrow_forward),
//       label: Text(title),
//     );
//   }
// }
