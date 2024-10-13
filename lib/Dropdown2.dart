import 'package:flutter/material.dart';
import 'package:flutter02/colum.dart';

class Statefullapp6 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ardrop();
  }
}

class ardrop extends State<Statefullapp6> {
  List<String> NameList = ["red", "green"];
  String? select;
  Color color = Colors.white38;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.black,
          title: Text(
            "aallljja",
            style: TextStyle(),
          ),
        ),
        backgroundColor: color,
        body: DropdownButton(
          items: NameList.map((element) {

            return DropdownMenuItem(

              value: element,
              child: Text(element),
            );

          }).toList(),
          onChanged: (NewName) {
            setState(() {
              select = NewName;
              switch (select) {
                case "red":
                  color = Colors.red;
                  print("b");
                  break;
                case "green":
                  color = Colors.green;
              }
            });

            },

          value: select,
        ),
      ),
    );
  }
}


















// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<String> deviceTypes = ["iOS", "Android"];
//   String? selectedDevice;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("اختر النظام"),
//       ),
//       body: Center(
//         child: DropdownButton(
//           items: deviceTypes.map((device) {
//             return DropdownMenuItem(
//               value: device,
//               child: Text(device),
//             );
//           }).toList(),
//           onChanged: (newValue) {
//             setState(() {
//               selectedDevice = newValue as String?;
//               if (selectedDevice == "iOS") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => IPhoneScreen()),
//                 );
//               }
//             });
//           },
//           value: selectedDevice,
//           hint: Text("اختر نظام التشغيل"),
//         ),
//       ),
//     );
//   }
// }
//
// class IPhoneScreen extends StatefulWidget {
//   @override
//   _IPhoneScreenState createState() => _IPhoneScreenState();
// }
//
// class _IPhoneScreenState extends State<IPhoneScreen> {
//   Color color = Colors.orange;
//   Color color1 = Colors.orange;
//   Color color2 = Colors.orange;
//   Color color3 = Colors.orange;
//   Color retcolor = Colors.white;
//   int counter = 0;
//   bool isPressed = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("IPhone"),
//         backgroundColor: Colors.green,
//       ),
//       body: ListView(
//         children: [
//           SizedBox(height: 15),
//           _buildPhoneOption("14 plus", "128GB", "\$400", "images/images2/14.jpg", color, () {
//             setState(() {
//               color = (counter++ % 2 == 0) ? Colors.blue.shade200 : retcolor;
//             });
//           }),
//           SizedBox(height: 10),
//           _buildPhoneOption("15 Pro Max", "128GB", "\$400", "images/images2/15.jpg", color1, () {
//             setState(() {
//               color1 = (counter++ % 2 == 0) ? Colors.blue.shade400 : retcolor;
//             });
//           }),
//           SizedBox(height: 10),
//           _buildPhoneOption("13 Pro", "128GB", "\$340", "images/images2/13.jpg", color2, () {
//             setState(() {
//               color2 = (counter++ % 2 == 0) ? Colors.blue.shade600 : retcolor;
//             });
//           }),
//           SizedBox(height: 10),
//           _buildPhoneOption("12 Pro Max", "128GB", "\$400", "images/images2/12-2.jpg", color3, () {
//             setState(() {
//               color3 = (counter++ % 2 == 0) ? Colors.blue.shade900 : retcolor;
//             });
//           }),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildPhoneOption(String model, String capacity, String price, String image, Color backgroundColor, VoidCallback onPressed) {
//     return Stack(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: 100,
//           child: TextButton(
//             onPressed: onPressed,
//             style: TextButton.styleFrom(
//               backgroundColor: backgroundColor,
//               foregroundColor: Colors.deepPurple,
//               shape: ContinuousRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(60)),
//                 side: BorderSide(
//                   strokeAlign: 1,
//                   color: backgroundColor,
//                   width: 5,
//                 ),
//               ),
//             ),
//             child: Stack(
//               alignment: Alignment.center,
//               children: [
//                 Image.asset(
//                   image,
//                   alignment: Alignment.bottomLeft,
//                   width: double.infinity,
//                   height: double.infinity,
//                 ),
//                 Center(
//                   child: Text(
//                     "$model\n$capacity\t\t\t$price",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white,
//                       backgroundColor: Colors.black54,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
