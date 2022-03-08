import 'package:flutter/material.dart';

class BuilderPage extends StatefulWidget {
  @override
  _BuilderPageState createState() => _BuilderPageState();
}

class _BuilderPageState extends State<BuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Builder 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      //此种写法会报错
      //原因：当前的context没有包含在Scaffold控件中
      /*body: Center(
        child: MaterialButton(
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: _displaySnackBar(context),
          child: Text('show SnackBar'),
        ),
      ),*/
      //解决方案
      body: Builder(
        builder: (context) => Center(
          child: MaterialButton(
            color: Colors.deepOrange,
            textColor: Colors.white,
            onPressed: () => _displaySnackBar(context),
            child: Text('SnackBar'),
          ),
        ),
      ),
    );
  }
  _displaySnackBar(BuildContext context) {
    final snackBar = SnackBar(content: Text('老孟'));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
