import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  @override
  _StackDemoState createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Demo'),
        elevation: 0,
      ),
      body: Center(child: Stack(children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Icon(Icons.favorite, size: 20,color: Colors.white,),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Icon(Icons.umbrella, size: 20,color: Colors.white,),
        ),
      ],),),
    );
  }
}
