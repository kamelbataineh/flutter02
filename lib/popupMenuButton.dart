import 'package:flutter/material.dart';

class Statefullapp7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ardrop();
  }
}

class ardrop extends State<Statefullapp7> {
  List<String> NameList = ["red", "green"];
  String? select;
  Color color = Colors.white38;
  Color color1 = Colors.white38;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: color1,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return NameList.map((element) {
                  return PopupMenuItem(value: element, child: Text(element));
                }).toList();
              },
              onCanceled: () {
                print("object");
              },
              onSelected: (NewName) {
                setState(() {
                  select = NewName;
                  switch (select) {
                    case "red":
                      color1 = Colors.red;
                      print("b");
                      break;
                    case "green":
                      color1 = Colors.green;
                  }
                });
              },
            )
          ],
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
