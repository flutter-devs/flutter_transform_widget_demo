
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TranslateScreen extends StatefulWidget {
  @override
  _TranslateScreenState createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Translate"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Transform.translate(
            offset: Offset(130, 130),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: MediaQuery.of(context).size.width*0.4,
              height: MediaQuery.of(context).size.height*0.12,
              child: Image.asset("assets/powered_by.png"),
            ),
          ),
        )
    );
  }
}
