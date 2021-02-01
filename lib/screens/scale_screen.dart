import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaleScreen extends StatefulWidget {
  @override
  _ScaleScreenState createState() => _ScaleScreenState();
}

class _ScaleScreenState extends State<ScaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Scale"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            color: Colors.black38,
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.25,
            alignment: Alignment.topLeft,
            child: Transform.scale(
              alignment: Alignment.bottomCenter,
              scale: 0.7,
              child: Container(
                color: Colors.teal[50],
                  width: MediaQuery.of(context).size.width*0.4,
                  height: MediaQuery.of(context).size.height*0.12,
                  child: Image.asset("assets/powered_by.png")),
            ),
          ),
        )
    );
  }
}
