import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoSegmentedControlPage extends StatefulWidget {
  @override
  _CupertinoSegmentedControlPageState createState() => _CupertinoSegmentedControlPageState();
}

class _CupertinoSegmentedControlPageState extends State<CupertinoSegmentedControlPage> {
  String _groupVal = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoSegmentedControl 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        CupertinoSegmentedControl(
          children: {
            '0':Container(
              child: Text('待支付'),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            ),
            '1':Container(
              child: Text('待发货'),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            ),
            '2':Container(
              child: Text('待签收'),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            ),
            '3': Container(
              child: Text('已完成'),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            )
          },
          onValueChanged: (value){
            print(value);
          },
        ),
        SizedBox(height: 20,),
        CupertinoSegmentedControl(
          children: {
            '0':Container(
              child: Text('待支付'),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            ),
            '1':Container(
              child: Text('待发货'),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            ),
            '2':Container(
              child: Text('待签收'),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            ),
            '3': Container(
              child: Text('已完成'),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            )
          },
          //边框颜色
          borderColor: Colors.grey,
          //selectedColor选中的背景颜色和未选中的字体颜色
          selectedColor: Colors.black,
          //pressedColor按住时的颜色
          pressedColor: Colors.blue,
          onValueChanged: (value){
            print(value);
          },
        ),
      ],),),
    );
  }
}
