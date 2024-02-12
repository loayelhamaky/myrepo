// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Calculator',
//           style: TextStyle(
//             fontStyle: FontStyle.italic,
//             fontSize: 30,
//             color: Colors.blue,
//           ),
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: Container(
//         color: Colors.blue,
//         child: Stack(
//           alignment: Alignment.bottomRight,
//           children: [
//             Container(
//                 width: 300,
//                 height: 40,
//                 color: Colors.amber,
//               ),
//
//                Container(
//                 width: 150,
//                 height: 30,
//                 color: Colors.pink,
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
 String alotImagePath = 'assets/images/img.png';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kosom Aloot',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30,
            color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.black,
      ),
    body: Container(
      alignment: Alignment.bottomRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(alotImagePath)
        ],
      ),
    )

    //
    //     //           color: Colors.pink,
    //     //           // margin: EdgeInsets.all(4),
    //     //           margin: EdgeInsets.symmetric(vertical: 30, horizontal: 44),
    //     //           padding: EdgeInsets.only(left: 20, right: 33,
    //     //           top: 55, bottom: 50),
    //     //
    //     //       child: Text('dffffff')),
    //    body: Container( // );
    );
    }
}

