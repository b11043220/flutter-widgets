import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {

  TextStyle txtStyle = TextStyle(
    fontSize: 20,
    color: Colors.red,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    decoration: TextDecoration.underline,
    decorationColor: Colors.blue,
    decorationThickness: 5
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout'),
        elevation: 1,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('人生得意须尽欢', style: txtStyle,),
          Text('莫使金樽空对月', style: txtStyle,)
        ],
      ),
    );
  }
}
