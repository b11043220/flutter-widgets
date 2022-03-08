import 'package:flutter/material.dart';

class RotatedBoxPage extends StatefulWidget {
  @override
  _RotatedBoxPageState createState() => _RotatedBoxPageState();
}

class _RotatedBoxPageState extends State<RotatedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotatedBox 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            //RotatedBox只能90度旋转
            child: RotatedBox(
              quarterTurns: 1, //旋转90度(1/4圈)
              child: Text("Hello world"),
            ),
          ),
          SizedBox(width: 10,),
          //可以任意角度旋转
          Transform.rotate(
            angle: 45,
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.green,
              child: Text('shit'),
            ),
          ),
          SizedBox(width: 10,),
          Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
        ],
      ),
    );
  }
}
