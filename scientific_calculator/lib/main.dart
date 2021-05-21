import 'package:flutter/material.dart';
import 'scientificCalculator.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scientific Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color(0xff000000),
        primarySwatch: Colors.pink,
      ),

      home: ScientificCalculator(),
    );

  }
}

class MerApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MerApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.black,
      image: Image.asset("assets/load.gif"),
      photoSize: 150,
      loaderColor: Colors.black,
      navigateAfterSeconds: ScientificCalculator(),
    );

  }









}