import 'package:flutter/material.dart';

main(){
  runApp( Statefullapp ());
}
class Statefullapp extends StatefulWidget{
  @override
State<StatefulWidget> createState(){
    return  FirstApp();
  }
}

class FirstApp extends State<Statefullapp>{
  int counter=0;
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
backgroundColor:Colors.red ,
        ),
  body:Column(
    children: [  Container(
      width: double.infinity, // لملء عرض الشاشة بالكامل
      color: Colors.blue, // لون خلفية الشريط
      padding: EdgeInsets.symmetric(vertical: 10), // حشوة لتوسيع الشريط
      child: Text(
        "Result $counter",
        textAlign: TextAlign.center, // لجعل النص في المنتصف
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
      ),
    ),
      ElevatedButton(
          onPressed:(){
        setState(() {
          counter++;
        });

          },
          child:Text("أستغفرالله",
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
            fontWeight: FontWeight.bold
          ),)),
      SizedBox(width: 2000),
      ElevatedButton(
          onPressed:(){
            setState(() {
              counter++;
            });

          },
          child:Text("الحمدالله",
            style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold
            ),)),
      ElevatedButton(
          onPressed:(){
            setState(() {
              counter++;
            });

          },
          child:Text("الله اكبر",
            style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold
            ),)),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = 0; // تصفير قيمة العداد عند الضغط
              });
            },
            backgroundColor: Colors.red, // لون الخلفية للزر
            child: Icon(Icons.refresh), // أيقونة داخل الزر
            tooltip: 'تصفير العداد', // نص يظهر عند التحويم على الزر
          ),

    ]

      )
      ),
    );
  }
}
















