import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)), // Simulating a 2-second loading time
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // If data is still loading, display a loading indicator
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(), // Loading indicator
              ),
            );
          } else {
            // Once data is loaded, display the main content
            return Scaffold(
              appBar: AppBar(
                title: Text("EmoTune"),
                backgroundColor: Color(0xFF2bd5ee),
              ),
                backgroundColor: Color(0xFF000841),
              body: Stack(
                children:[
                  Positioned(
                    left: 70, // X-axis position
                    top: 250, // Y-axis position
                    child: Image.asset(
                      'assets/Home.jpg', // Replace with your image path
                      width: 200, // Adjust the width of the image as needed
                      height: 200, // Adjust the height of the image as needed
                    ),
                  ),
                    Positioned(
                        left: 150, // X-axis position
                        top: 500,
                        child: ElevatedButton(
                                    onPressed: (){
                                      print('camera Opens');
                                    },
                                  child: Text("Camera"),

                 ))
                ],
              )
          );}
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


