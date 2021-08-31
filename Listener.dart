import 'package:flutter/material.dart';

class ListenerDemo extends StatefulWidget {
  @override
  _ListenerDemoState createState() => _ListenerDemoState();
}

class _ListenerDemoState extends State<ListenerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listener Demo'),
        elevation: 0,
      ),
      body: Center(child: Listener(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
        onPointerDown: (event) => print("手指按下:$event"),
        onPointerMove: (event) => print("手指移动:$event"),
        onPointerUp: (event) => print("手指抬起:$event"),
      ),),
    );
  }
}
