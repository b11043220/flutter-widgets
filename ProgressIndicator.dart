import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProgressIndicatorPage extends StatefulWidget {
  @override
  _ProgressIndicatorPageState createState() => _ProgressIndicatorPageState();
}

class _ProgressIndicatorPageState extends State<ProgressIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProgressIndicator 组件'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(padding: EdgeInsets.all(20), child: Column(children: [
        //水平进度指示器
        LinearProgressIndicator(
          //完成度
          value: 0.2,
          //进度条背景颜色
          backgroundColor: Colors.green,
          //已完成进度颜色
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        ),
        SizedBox(height: 20,),
        //圆形进度条
        CircularProgressIndicator(
          value: 0.3,
          backgroundColor: Colors.greenAccent,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        ),
        SizedBox(height: 20,),
        //ios风格的进度圆形进度条(旋转"菊花")
        CupertinoActivityIndicator(
          //大小
          radius: 20,
        ),
        SizedBox(height: 20,),
        //刷新指示器，
        //通常用于下拉刷新
        RefreshProgressIndicator(
          backgroundColor: Colors.greenAccent,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          strokeWidth: 5.0,
        )
      ],),),
    );
  }
}
