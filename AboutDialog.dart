import 'package:flutter/material.dart';

class AboutDialogPage extends StatefulWidget {
  @override
  _AboutDialogPageState createState() => _AboutDialogPageState();
}

class _AboutDialogPageState extends State<AboutDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Dialog Widget'),
        elevation: 0,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person),
        onPressed: ()=> showDialog(
          context: context,
          barrierDismissible: false, //true: 点击空白区域即可退出， false：需要点击按钮才能退出
          builder: (context)=> AboutDialog(
            applicationName:'Flutter组件大全学习',
            applicationVersion:'1.0.0',
            children: [
              Text('组件学习1'),
              Divider(),
              Text('组件学习2'),
              Divider(),
              Text('组件学习1'),
            ],
          ),
        ),
      ),
    );
  }
}
