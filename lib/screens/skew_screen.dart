import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkewScreen extends StatefulWidget {
  @override
  _SkewScreenState createState() => _SkewScreenState();
}

class _SkewScreenState extends State<SkewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Skew"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(left: 30,right: 30),
            color: Colors.blueGrey,
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.25,
            alignment: Alignment.topLeft,
            child: Transform(
              transform: Matrix4.skewY(0.4),
              child: Container(
                width: MediaQuery.of(context).size.width*0.4,
                color: Colors.yellow[100],
                  child: Image.asset("assets/powered_by.png")),
            )
          ),
        )
    );
  }
}
