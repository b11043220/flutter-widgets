import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerPage extends StatefulWidget {
  @override
  _DividerPageState createState() => _DividerPageState();
}

class _DividerPageState extends State<DividerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        Divider(
          //高度，并不是线的高度，绘制的线居中
          height: 20,
          //分割线的高度
          thickness: 10,
          //分割线颜色
          color: Colors.red,
          //分割线前面空白区域
          indent: 50,
          //分割线后面空白区域
          endIndent: 50,
        ),
        SizedBox(height: 20,),
        SizedBox(
          height: 100,
          child: VerticalDivider(
            width: 20,
            thickness: 2,
            color: Colors.red,
            indent: 10,
            endIndent: 30,
          ),
        )
      ],),),
    );
  }
}
