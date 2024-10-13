import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Statefullapp12 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstApp();
  }
}

class FirstApp extends State<Statefullapp12> {
  late String input;
  late TextEditingController cont;

@override
  void initState() {
    super.initState();
    input = "hello : ";
    cont = TextEditingController(text: input);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(""),
            backgroundColor: Colors.white54,
          ),
          backgroundColor: Colors.white,

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                 ///
                  ///
                  ///
                  ///
                 onChanged:(v){

                   setState(() {
                     input=v;
                   });




cont=cont;
Text(input);
                 },



                 ///
                  ///
                  ///
                  ///
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.star,
                        color: Colors.cyan,
                      ),
                      prefixIcon: Icon(
                        Icons.favorite,
                        color: Colors.blue,
                      ),
                      suffixIcon: Icon(
                        Icons.park,
                        color: Colors.blue,
                      ),
                      // prefixText: "hello",
                      label: Text(
                        "label",
                        style: TextStyle(color: Colors.blue[900]),
                      ),
                      helperText: "Help text",
                      counterText: "0/100",
                      helperMaxLines: 1,
                      //مابنزل اكثر من سطر
                      // errorText: "error",
                      hintText: "Hint text",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      filled: true,
                      focusedBorder: OutlineInputBorder(),
                      //
                      fillColor: Colors.blue[100]),
                  obscureText: true,
                  inputFormatters: [
                    // FilteringTextInputFormatter.allow(RegExp(r'^[1-2]')) ,// مسموح لك بس تكتب من هذول
                    //  FilteringTextInputFormatter.digitsOnly ,// بتغطي على كلمه السر ...........
                     FilteringTextInputFormatter.singleLineFormatter,
                    FilteringTextInputFormatter.deny(r'^[1-5]'),
                    // ممنوع تكتب من هذول



                  ],


                ),

              ),
              Text(input),
            ],
          ),
        ));
  }
}
