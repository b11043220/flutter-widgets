import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var _name = '';
  var _pwd = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Padding(padding: EdgeInsets.all(20), child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: '输入账号'),
              onSaved: (value) {
                _name = value!;
              },
              validator: (String? value) {
                return value!.length >= 6 ? null : '账号最少6个字符';
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: '输入密码'),
              obscureText: true,
              onSaved: (value) {
                _pwd = value!;
              },
              validator: (String? value) {
                return value!.length >= 6 ? null : '账号最少6个字符';
              },
            ),
          ],
        ),
      ),),),
    );
  }
}
