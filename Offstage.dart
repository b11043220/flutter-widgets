import 'package:flutter/material.dart';

class OffstagePage extends StatefulWidget {
  @override
  _OffstagePageState createState() => _OffstagePageState();
}
//当offstage为true，当前控件不会被绘制在屏幕上，不会响应点击事件，也不会占用空间，
//当offstage为false，当前控件则跟平常用的控件一样渲染绘制。
class _OffstagePageState extends State<OffstagePage> {
  bool _isOff = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offstage 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        Column(
          children: <Widget>[
            Offstage(
              offstage: _isOff, //false:显示该组件；true:隐藏该组件
              child: Text("Offstage组件"),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(_isOff?'显示':'隐藏', style: TextStyle(color: Colors.white),),
              onPressed: ()=> setState(() {
                _isOff = !_isOff;
              }),
            )
          ],
        )
      ],),),
    );
  }
}
