import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  @override
  _AlignDemoState createState() => _AlignDemoState();
}

class _AlignDemoState extends State<AlignDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align Demo'),
        elevation: 0,
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        widthFactor: 300,
        heightFactor: 300,
        child: Text('Hello World'),
      ),
    );
  }
}
