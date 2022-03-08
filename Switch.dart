import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 10,),
        Switch(
          value: _value1,
          activeColor: Colors.red,
          activeTrackColor: Colors.blue,
          onChanged: (value){
            setState(() {
              _value1 = value;
            });
          },
        ),
        SizedBox(height: 10,),
        SwitchListTile(
          title:Text('是否允许4G下载'),
          value: _value2,
          onChanged: (value){
            setState(() {
              _value2 = value;
            });
          },
        ),
        SizedBox(height: 10,),
        CupertinoSwitch(
          value: _value3,
          onChanged: (value){
            setState(() {
              _value3 = value;
            });
          },
        )
      ],),),
    );
  }
}
