import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(children: [

      ],),
    );
  }
}
