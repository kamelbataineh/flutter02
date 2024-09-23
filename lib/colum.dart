import 'package:flutter/material.dart';

class Statefullapp4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstApp();
  }
}

class FirstApp extends State<Statefullapp4> {
  Color color = Colors.orange;
  Color color1 = Colors.orange;
  Color color2 = Colors.orange;
  Color color3 = Colors.orange;
  Color retcolor = Colors.white;
  List<Color> colors = [
    Colors.blue.shade200,
    Colors.blue.shade400,
    Colors.blue.shade600,
    Colors.blue.shade900
  ];
  int counter = 0;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "IPhone",
              style: TextStyle(
                  fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.green,
          ),
          backgroundColor: Colors.white,
          body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              if (counter % 2 == 0) {
                                counter++;
                                color = Colors.blue.shade200;
                              } else {
                                color = retcolor;
                                counter++;
                              }
                            });
                            print("Button clicoo4ked");
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: color,
                            foregroundColor: Colors.deepPurple,
                            shape: ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              side: BorderSide(
                                  strokeAlign: 1,
                                  color: Colors.blue.shade200,
                                  width: 5),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                "images/images2/14.jpg",
                                alignment: Alignment.bottomLeft,
                                // fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                              Center(
                                child: Text(
                                  "14 plus\n128GB\t\t\t\$400   ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    backgroundColor: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  ///
                  ///
                  ///
                  ///
                  ///
                  ///
                  ///
                  SizedBox(
                    height: 10,
                  ),
                  Column(children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (counter % 2 == 0) {
                                  counter++;
                                  color1 = Colors.blue.shade400;
                                } else {
                                  color1 = retcolor;
                                  counter++;
                                }
                              });
                              print("Button clicoo4ked");
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: color1,
                              foregroundColor: Colors.deepPurple,
                              shape: ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                side: BorderSide(
                                    strokeAlign: 1,
                                    color: Colors.blue.shade400,
                                    width: 5),
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  "images/images2/15.jpg",
                                  alignment: Alignment.bottomLeft,
                                  // fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                                Center(
                                  child: Text(
                                    "15 Pro Max \n128GB\t\t\t\$400   ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      backgroundColor: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),

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
                  Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (counter % 2 == 0) {
                                  counter++;
                                  color2 = Colors.blue.shade600;
                                } else {
                                  color2 = retcolor;
                                  counter++;
                                }
                              });
                              print("Button clicoo4ked");
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: color2,
                              foregroundColor: Colors.deepPurple,
                              shape: ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                side: BorderSide(
                                    strokeAlign: 1,
                                    color: Colors.blue.shade600,
                                    width: 5),
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  "images/images2/13.jpg",
                                  alignment: Alignment.bottomLeft,
                                  // fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                                Center(
                                  child: Text(
                                    "13 Pro\n128GB\t\t\t\$340   ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      backgroundColor: Colors.black54,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 22,
                                  child: TextButton.icon(
                                    onPressed: () {
                                      setState(() {
                                        isPressed = !isPressed;
                                      });
                                    },
                                    icon: Icon(
                                      isPressed
                                          ? Icons.check_box_outline_blank
                                          : Icons.check_box,
                                      color: Colors.green,
                                    ),
                                    label: Text(""),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),

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
                  Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (counter % 2 == 0) {
                                  counter++;
                                  color3 = Colors.blue.shade900;
                                } else {
                                  color3 = retcolor;
                                  counter++;
                                }
                              });
                              print("Button clicoo4ked");
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: color3,
                              foregroundColor: Colors.deepPurple,
                              shape: ContinuousRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                side: BorderSide(
                                    strokeAlign: 1,
                                    color: Colors.blue.shade900,
                                    width: 5),
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  "images/images2/12-2.jpg",
                                  alignment: Alignment.bottomLeft,
                                  // fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                                Center(
                                  child: Text(
                                    "12 Pro Max\n128GB\t\t\t\$400   ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      backgroundColor: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),

                  ///
                  ///
                  ///
                  ///
                  ///
                  ///
                  ///
                ]),
              ]),
        )
        //backgroundColor: Colors.black,
        );
  }
}
