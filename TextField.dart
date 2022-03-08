import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
              //icon: Icon(Icons.person),
              labelText: '姓名：',
              labelStyle: TextStyle(color:Colors.red),

              //提示帮助信息
              helperText: '用户名长度为6-10个字母',
              helperStyle: TextStyle(color: Colors.blue),
              helperMaxLines: 1,

              //placefolder信息
              hintText: '请输入用户名',
              hintStyle: TextStyle(color: Colors.grey),
              hintMaxLines: 1,

              //错误信息
              errorText: '用户名输入错误',
              errorStyle: TextStyle(fontSize: 12),
              errorMaxLines: 1,
              errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),

              prefixIcon: Icon(Icons.person),
              suffix: Icon(Icons.person)
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 60,
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Color(0x30cccccc),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x00FF0000)),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              hintText: 'QQ号/手机号/邮箱',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x00000000)),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
          ),
        )
      ],),),
    );
  }
}
