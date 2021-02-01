
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RotateScreen extends StatefulWidget {
  @override
  _RotateScreenState createState() => _RotateScreenState();
}

class _RotateScreenState extends State<RotateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Rotate"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            color: Colors.cyanAccent[100],
            height: MediaQuery.of(context).size.height*0.25,
            width: MediaQuery.of(context).size.width*0.7,
            child: Transform.rotate(
                angle: pi/2,
                child: Image.asset("assets/powered_by.png")),
          ),
        )
    );
  }
}
