import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  @override
  _OpacityPageState createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                color: Colors.red,
                alignment: Alignment.center,
                child: Text('1',style: TextStyle(color: Colors.white),),
              ),
              Container(
                height: 120,
                width: 120,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text('2',style: TextStyle(color: Colors.white),),
              ),
              Container(
                height: 120,
                width: 120,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text('3',style: TextStyle(color: Colors.white),),
              ),
          ],),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                color: Colors.red,
                alignment: Alignment.center,
                child: Text('1',style: TextStyle(color: Colors.white),),
              ),
              //不显示，但是占据原来的位置
              Opacity(opacity: 0, child: Container(
                height: 120,
                width: 120,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text('2',style: TextStyle(color: Colors.white),),
              ),),
              Container(
                height: 120,
                width: 120,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text('3',style: TextStyle(color: Colors.white),),
              ),
            ],),
      ],),
    );
  }
}

//使用Opacity控件和另一个控件层叠在一起，将会出现“蒙层效果”：
class StackOpacityPage extends StatefulWidget {
  @override
  _StackOpacityPageState createState() => _StackOpacityPageState();
}

class _StackOpacityPageState extends State<StackOpacityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Stack(children: [
        Container(
          width: 300,
          height: 300,
          child: Image.network(
            'https://t7.baidu.com/it/u=1951548898,3927145&fm=193&f=GIF',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.blue],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
              ),
            ),
          ),
        ),
      ],),),
    );
  }
}
