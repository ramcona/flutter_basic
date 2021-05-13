import 'package:flutter/material.dart';
import 'dart:async';

import 'package:my_app/home.dart';
import 'package:my_app/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreen>{
  
  @override
  void initState() {
    super.initState();
    
    Timer(Duration(seconds: 4), () =>
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => LoginScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("images/lending.png", width: 200, height: 200),
      )
    );
  }

}
