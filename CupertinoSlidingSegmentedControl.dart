import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoSlidingSegmentedControlPage extends StatefulWidget {
  @override
  _CupertinoSlidingSegmentedControlPageState createState() => _CupertinoSlidingSegmentedControlPageState();
}

class _CupertinoSlidingSegmentedControlPageState extends State<CupertinoSlidingSegmentedControlPage> {
  String _value = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoSlidingSegmentedControl 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        CupertinoSlidingSegmentedControl(
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
          groupValue: _value,
          //组件背景色
          backgroundColor: Colors.white,
          //选中状态背景色
          thumbColor: Colors.blue,
          padding: EdgeInsets.all(10),
          onValueChanged: (value){
            setState(() {
              _value = value.toString();
            });
          },
        )
      ],),),
    );
  }
}
