import 'package:flutter/material.dart';

class StreamDemo extends StatefulWidget {
  @override
  _StreamDemoState createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Demo'),
        elevation: 0,
      ),
      body: Center(
        child: PeriodicDemo(),
      ),
    );
  }
}

class StreamDemo2 extends StatefulWidget {
  @override
  _StreamDemo2State createState() => _StreamDemo2State();
}

class _StreamDemo2State extends State<StreamDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP BAR'),
        elevation: 0,
      ),
      body: Center(),
    );
  }
}


//每隔1秒局部刷新数据
//通常请求需要使用动态widget的setState方法实现
//如果使用streamBuilder方法静态widget就可以实现刷新效果
//通常我们在开发 Flutter 页面，数据发生更新，都是直接通过 setState 方式对整个页面进行更新。
// 如果页面某些数据需要每秒都更新，对整个页面都刷新是很影响页面性能，有必要局部刷新。
class PeriodicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: '',
      stream: Stream.periodic(Duration(seconds: 1), (value) {
        return DateTime.now();
      }),
      builder: (context, snapshot) {
        return Text(
          snapshot.data.toString(),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.red
          ),
        );
      }
    );
  }
}

