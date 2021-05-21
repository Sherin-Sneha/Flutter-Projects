import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black54,
          appBar: AppBar(
            title: Text("Sherin's Bio",
              style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.black,

          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.cyanAccent, Colors.black54]),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "            Me  \n            Sherin Sneha J",
                        style: TextStyle(fontSize: 40,
                          fontFamily:"MoonBrightDemo",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.cyanAccent, Colors.black54]),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("   B'day  \n   05.02.2001",

                          style: TextStyle(fontSize: 40,
                              fontFamily:"MoonBrightDemo",
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          )),
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.cyanAccent, Colors.black54]),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "   Born and Brought up  \n             Trichy",
                        style: TextStyle(fontSize: 40,
                            fontFamily:"MoonBrightDemo",
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.cyanAccent, Colors.black54]),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "   School  \n   St.Joesph's Convent",
                        style: TextStyle(fontSize: 40,
                            fontFamily:"MoonBrightDemo",
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.cyanAccent, Colors.black54]),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "                 College  \n         Licet, Chennai",
                        style: TextStyle(fontSize: 40,
                            fontFamily:"MoonBrightDemo",
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.cyanAccent, Colors.black54]),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("   CONTACT ME  ",
                          style: TextStyle(fontSize: 35,
                              fontFamily:"MoonBrightDemo",
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

