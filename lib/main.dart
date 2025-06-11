import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      home: Scaffold(
        body: Center(
          child: Text("Hellow Flutter",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),),
        )
        ),
    );
  }
}