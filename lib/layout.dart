import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  int cunter = 0;
  Color color = Colors.black;
  Color color1 = Colors.white;
  Color retcolor = Colors.black;
  Color retcolor1 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "data",
            style: TextStyle(
              color: color,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: color1,
        body:
        Column(
          children: <Widget>[
            SizedBox(
              height: 33,

            ),
            Center(
              child: SizedBox(
                width: 200,
                height: 60,
                child: TextButton.icon(
                  onPressed: () {
                    setState(() {
                      print("hi");

                      if (cunter % 4 == 0) {
                        cunter++;
                        color = Colors.lime;
                        color1 = Colors.green;
                      } else if (cunter % 3 == 0) {
                        cunter++;
                        color = Colors.red;
                        color1 = Colors.cyanAccent;
                      } else if (cunter % 5 == 0) {
                        cunter++;
                        color = Colors.purple;
                        color1 = Colors.yellow;
                      }
                      else if (cunter % 2 == 0) {
                        cunter++;
                        color = Colors.pink;
                        color1 = Colors.brown;
                      }
                      else{
                        cunter++;
                        color= retcolor;
                        color1 = retcolor1;
                      }
                    });
                  },
                  label: Text(
                    "Chick",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  icon: Icon(Icons.image_sharp),
                  style: TextButton.styleFrom(
                      backgroundColor: color,
                      foregroundColor: Colors.blue),
                ),

              ),

            ),
          ],

        ),
floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        floatingActionButton: FloatingActionButton(onPressed:(){
          setState(() {
            print("hi");

            if (cunter % 4 == 0) {
              cunter++;
              color = Colors.lime;
              color1 = Colors.green;
            } else if (cunter % 3 == 0) {
              cunter++;
              color = Colors.red;
              color1 = Colors.cyanAccent;
            } else if (cunter % 5 == 0) {
              cunter++;
              color = Colors.purple;
              color1 = Colors.yellow;
            }
            else if (cunter % 2 == 0) {
              cunter++;
              color = Colors.pink;
              color1 = Colors.brown;
            }
            else{
              cunter++;
              color= retcolor;
              color1 = retcolor1;
            }
          });

        },
      backgroundColor: Colors.black,
          child: Icon(Icons.add,color: Colors.blue,)),
      )
    );
  }
}
