import 'package:flutter/material.dart';

class Statefullapp8 extends StatefulWidget {
  const Statefullapp8({super.key});

  @override
  State<Statefullapp8> createState() => _Statefullapp8State();
}

class _Statefullapp8State extends State<Statefullapp8> {
  List<String> list = ["setting", "Help"];
  List<String> NameList = ["black", "white"];

  String? select;
  Color color1 = Colors.white;
  Color color2 = Colors.black;
  Color color3 = Colors.deepOrange;
  Color color4 = Colors.deepOrange;

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
        body: ListView(
          children: [
            Row(
              children: [
                Text(
                  "Color",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25, color: color2),
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
                                style: TextStyle(fontSize: 20, color: color2),
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
            Box1(context, color1, color2),
            Box2(context, color1, color2),
            Box3(context, color1, color2),
            Box4(context, color1, color2),
            Box5(context, color1, color2),
            Box6(context, color1, color2),
            Box7(context, color1, color2),
          ],
        ),
      ),
    );
  }
}

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
Widget Box1(BuildContext context, Color color1, Color color2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width - 16,
      height: 100,
      color: color2,
      child: Center(
        child: Text(
          "1",
          style: TextStyle(fontSize: 33, color: color1),
        ),
      ),
    ),
  );
}

Widget Box2(BuildContext context, Color color1, Color color2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width - 16,
      height: 100,
      color: color2,
      child: Center(
        child: Text(
          "2",
          style: TextStyle(fontSize: 33, color: color1),
        ),
      ),
    ),
  );
}

Widget Box3(BuildContext context, Color color1, Color color2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width - 16,
      height: 100,
      color: color2,
      child: Center(
        child: Text(
          "3",
          style: TextStyle(fontSize: 33, color: color1),
        ),
      ),
    ),
  );
}

Widget Box4(BuildContext context, Color color1, Color color2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width - 16,
      height: 100,
      color: color2,
      child: Center(
        child: Text(
          "4",
          style: TextStyle(fontSize: 33, color: color1),
        ),
      ),
    ),
  );
}

Widget Box5(BuildContext context, Color color1, Color color2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width - 16,
      height: 100,
      color: color2,
      child: Center(
        child: Text(
          "5",
          style: TextStyle(fontSize: 33, color: color1),
        ),
      ),
    ),
  );
}

Widget Box6(BuildContext context, Color color1, Color color2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width - 16,
      height: 100,
      color: color2,
      child: Center(
        child: Text(
          "6",
          style: TextStyle(fontSize: 33, color: color1),
        ),
      ),
    ),
  );
}

Widget Box7(BuildContext context, Color color1, Color color2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width - 16,
      height: 100,
      color: color2,
      child: Center(
        child: Text(
          "7",
          style: TextStyle(fontSize: 33, color: color1),
        ),
      ),
    ),
  );
}
