import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool _checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        Checkbox(
          //选中背景颜色
          activeColor: Colors.red,
          //选中对号颜色
          checkColor: Colors.white,
          //形状
          shape: CircleBorder(
            side: BorderSide(width: 1, color: Colors.red)
          ),
          value: _checkValue,
          onChanged: (value){
            setState(() {
              _checkValue = value!;
            });
          }
        ),
        SizedBox(height: 10,),
        CheckboxListTile(
          //选中背景颜色
          activeColor: Colors.red,
          //选中对号颜色
          checkColor: Colors.white,
          //复选框在最后边
          //controlAffinity: ListTileControlAffinity.trailing,
          //复选框在最前面
          controlAffinity: ListTileControlAffinity.leading,
          title: Text('复选框'),
          value: _checkValue,
          onChanged: (value){
            setState(() {
              _checkValue = value!;
            });
          },
        )
      ],),),
    );
  }
}
