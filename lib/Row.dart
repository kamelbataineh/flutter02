import 'package:flutter/material.dart';

class Statefullapp3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstApp();
  }
}

class FirstApp extends State<Statefullapp3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body:  Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.deepOrange,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.amber,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ),

              ],
            ),
            
          ],
        ),
        ),
    );
  }
}
