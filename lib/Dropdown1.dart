import 'package:flutter/material.dart';
import 'package:flutter02/colum.dart';

class Statefullapp5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ardrop();
  }
}

class ardrop extends State<Statefullapp5> {
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
            "aaa",
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
