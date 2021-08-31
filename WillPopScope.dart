import 'package:flutter/material.dart';

class WillPopScopeDemo extends StatefulWidget {
  @override
  _WillPopScopeDemoState createState() => _WillPopScopeDemoState();
}

class _WillPopScopeDemoState extends State<WillPopScopeDemo> {
  DateTime _lastPressedAt = DateTime.now(); //上次点击时间

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_lastPressedAt == null ||
            DateTime.now().difference(_lastPressedAt) > Duration(seconds: 10)) {
          //两次点击间隔超过1秒则重新计时
          _lastPressedAt = DateTime.now();
          return false;
        }
        print('即将退出应用');
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('WillPopScode Demo'),
        ),
        body: Center(child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Color(0xffff0000),
              borderRadius: BorderRadius.circular(5)
          ),
        ),),
      ),
    );
  }
}

