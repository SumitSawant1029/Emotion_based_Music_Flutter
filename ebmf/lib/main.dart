import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
       home:Scaffold(
         appBar:AppBar(
           title: Text("Hello World"),
             backgroundColor: Colors.red


         ),
         body:Center(
             child: Text('Hi Bro')
         ),

       ),
      debugShowCheckedModeBanner: false,
    )
  );
}
