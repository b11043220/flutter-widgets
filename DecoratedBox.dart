import 'package:flutter/material.dart';

class DecoratedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBox Demo'),
        elevation: 0,
      ),
      body: Center(child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Colors.red, Colors.orange]), //背景渐变
          borderRadius: BorderRadius.circular(3.0), //3像素圆角
          boxShadow: [ //阴影
            BoxShadow(
              color:Colors.black54,
              offset: Offset(2.0,2.0),
              blurRadius: 4.0
            )
          ]
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
          child: Text("登录", style: TextStyle(color: Colors.white, fontSize: 25),),
        )
      ),),
    );
  }
}
