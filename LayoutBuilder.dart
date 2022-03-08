import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LayoutBuilderPage extends StatefulWidget {
  @override
  _LayoutBuilderPageState createState() => _LayoutBuilderPageState();
}

//有时我们希望根据组件的大小确认组件的外观，比如竖屏的时候上下展示，横屏的时候左右展示，
// 通过LayoutBuilder组件可以获取父组件的约束尺寸。
class _LayoutBuilderPageState extends State<LayoutBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxHeight);
          var color = Colors.red;
          if (constraints.maxHeight > 300) {
            color = Colors.blue;
          }
          return Container(
            height: 200,
            width: 200,
            color: color,
          );
        },
      ),),
    );
  }
}
