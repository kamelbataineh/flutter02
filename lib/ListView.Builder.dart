import 'package:flutter/material.dart';
import 'ListView.dart';

class Statefullapp9 extends StatefulWidget {
  const Statefullapp9({super.key});

  @override
  State<Statefullapp9> createState() => _Statefullapp9State();
}

class _Statefullapp9State extends State<Statefullapp9> {
  List<String> list = ["setting", "Help"];
  List<String> NameList = ["black", "white"];
  List<int> ListNum = [100, 200, 300, 400, 500, 600, 700, 800, 900];

  String? select;
  Color color1 = Colors.white;
  Color color2 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: AppBar(
                backgroundColor: Colors.blue,
                actions: [
                  PopupMenuButton(
                      icon: Icon(
                        Icons.density_medium,
                        size: 40,
                        color: Colors.white,
                      ),
                      itemBuilder: (context) {
                        return list.map((element) {
                          return PopupMenuItem(
                            value: element,
                            child: Row(
                              children: [
                                Icon(
                                  element == "setting"
                                      ? Icons.settings
                                      : Icons.help,
                                  color: Colors.blue,
                                  size: 35,
                                ),
                                SizedBox(width: 30),
                                Text(
                                  element,
                                  style: TextStyle(fontSize: 20, color: color1),
                                ),
                              ],
                            ),
                          );
                        }).toList();
                      },
                      color: color2,
                      onCanceled: () {
                        print("object");
                      },
                      onSelected: (value) {
                        //   setState(() {
                        //     select = value;
                        //     switch (select) {
                        //       case "Help":
                        //         color1 = Colors.white;
                        //         color2 = Colors.black;
                        //         break;
                        //       case "setting":
                        //         color1 = Colors.black;
                        //         color2 = Colors.white;
                        //
                        //         break;
                        //       default:
                        //         color1 = Colors.tealAccent;
                        //     }
                        //   });
                      })
                ],
              ),
            ),
            backgroundColor: color1,

            ///
            ///
            ///
            ///
            ///
            ///
            ///
            ///
            ///
            ///
            ///
            ///
            ///
            ///
            body: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Color",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: color2),
                    ),
                    SizedBox(
                      width: 210,
                    ),
                    Container(
                      color: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: DropdownButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: color2,
                          size: 30,
                        ),
                        items: NameList.map((element) {
                          return DropdownMenuItem(
                              value: element,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    element,
                                    style:
                                        TextStyle(fontSize: 20, color: color2),
                                  ),
                                ],
                              ));
                        }).toList(),
                        dropdownColor: color1,
                        onChanged: (value) {
                          setState(() {
                            select = value;
                            switch (select) {
                              case "black":
                                color1 = Colors.white;
                                color2 = Colors.black;
                                break;
                              case "white":
                                color1 = Colors.black;
                                color2 = Colors.white;

                                break;
                              default:
                                color1 = Colors.tealAccent;
                            }
                          });
                        },
                        value: select,
                        // hint:Text("Color",style: TextStyle(fontWeight: FontWeight.bold ,fontSize:25),),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 33,
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Box1(context, color1, color2);
                  },
                  itemCount: ListNum.length,
                ))
              ],
            )));
  }
}
