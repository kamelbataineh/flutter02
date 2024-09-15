import 'package:flutter/material.dart';
import 'butom.dart';
import 'learn.dart';


main() {
  runApp(Statefullapp());
}



//
// class Statefullapp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return FirstApp();
//   }
// }
//
// class FirstApp extends State<Statefullapp> {
//   int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text(
//               "                       قائمة الأذكار        ",
//               style: TextStyle(
//                 fontSize: 20,
//                 // textAlign: TextAlign.center,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             backgroundColor: Colors.black,
//           ),
//           body: Column(
//             children: [
//               Column(children: [
//                 Container(
//                   width:500,
//                   color: Colors.blue,
//                   child: Text(
//                     "العداد                      $counter ",
//                     textAlign: TextAlign.end,
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 40,
//                     ),
//                   ),
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         if (counter == 33) {
//                           counter = 0;
//                         } else {
//                           counter++;
//                         }
//                       });
//                     },
//                     child: Text(
//                       "سبحان الله",
//                       style: TextStyle(
//                           fontSize: 20,
//
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold),
//                     )),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         if (counter == 33) {
//                           counter = 0;
//                         } else {
//                           counter++;
//                         }
//                       });
//                     },
//                     child: Text(
//                       "kamel bataineh",
//                       style: TextStyle(
//                         fontFamily: 'PlayCU',
//                           fontSize: 20,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         backgroundColor: Colors.amber,
//
//                       ),
//                     )
//
//                   ),
//
//
//
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         if (counter == 33) {
//                           counter = 0;
//                         } else {
//                           counter++;
//                         }
//                       });
//                     },
//
//
//
//
//                     child: Text(
//
//
//                       "الله اكبر"
//                           ""
//                           "",
//                       style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold),
//                     )),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       counter = 0;
//                     });
//
//                     },
//
//                   child: Icon(Icons.refresh_outlined),
//
//                 ),
//               ]),
//             ],
//           ),
//         ));
//   }
// }
