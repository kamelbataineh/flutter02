import 'package:flutter/material.dart';

class Statefullapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstApp();
  }
}

class FirstApp extends State<Statefullapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(""),
            actions: [
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () {
                      print("object");
                    },
                    label: Icon(
                      Icons.density_medium,
                      color: Colors.white,
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: CircleBorder(
                        side: BorderSide(strokeAlign: 2, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 232,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          print("object");
                        },
                        label: Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Colors.white,
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          shape: CircleBorder(
                              eccentricity: BorderSide.strokeAlignCenter,
                              side: BorderSide(
                                  strokeAlign: 2, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
            backgroundColor: Colors.deepPurple,
          ),
          backgroundColor: Colors.deepPurple,

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
              Center(
                child: Stack(children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      "images/images2/WhatsApp Image 2024-09-15 at 18.51.49_c82066c0.png",
                    ),
                  ),

                  ///
                  ///
                  /// new
                  ///
                  ///
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  color: Colors.black,
                                  blurRadius: BorderSide.strokeAlignCenter,
                                  offset: Offset(1, 4))
                            ]),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: TextButton.icon(
                  onPressed: () {
                    print("object");
                  },
                  label: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  icon: Icon(Icons.ad_units_outlined),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: TextButton.icon(
                    onPressed: () {
                      print("object");
                    },
                    label: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    icon: Icon(Icons.ad_units),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.deepOrange,
                    )),
              ),
              SizedBox(
                height: 6,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    print("object");
                  },
                  child: Text("Forget your passwoed?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
