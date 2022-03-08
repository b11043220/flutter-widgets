import 'package:flutter/material.dart';

class CircleAvatarPage extends StatefulWidget {
  @override
  _CircleAvatarPageState createState() => _CircleAvatarPageState();
}

class _CircleAvatarPageState extends State<CircleAvatarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleAvatar 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: CircleAvatar(
        //背景色
        backgroundColor: Colors.red,
        //文字颜色
        foregroundColor: Colors.white,
        //设置大小
        child: Text('兮'),
      ),),
    );
  }
}
