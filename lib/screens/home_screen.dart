import 'package:flutter/material.dart';
import 'package:flutter_transform_widget_demo/screens/rotate_screen.dart';
import 'package:flutter_transform_widget_demo/screens/scale_screen.dart';
import 'package:flutter_transform_widget_demo/screens/skew_screen.dart';
import 'package:flutter_transform_widget_demo/screens/translate_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Flutter Transform Widget Demo'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                RaisedButton(
                  child: Text('Scale',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent[100],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ScaleScreen()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),
                ),
                SizedBox(height: 8,),
                RaisedButton(
                  child: Text('Skew',style: TextStyle(color: Colors.black),),
                  color: Colors.teal[100],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SkewScreen()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),

                RaisedButton(
                  child: Text('Rotate',style:TextStyle(color: Colors.black),),
                  color: Colors.cyan[100],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => RotateScreen()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),


                ),
                SizedBox(height: 8,),

                RaisedButton(
                  child: Text('Translate',style: TextStyle(color: Colors.black),),
                  color: Colors.cyanAccent[100],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TranslateScreen()));
                    },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),


                ),
              ],
            ),
          )
      ), //center
    );
  }
}
