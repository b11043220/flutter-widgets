import 'package:flutter/material.dart';

class BannerPage extends StatefulWidget {
  @override
  _BannerPageState createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Banner(
        message: '老孟',
        textStyle: TextStyle(
          color: Colors.white,
        ),
        color: Colors.green,
        location: BannerLocation.topEnd,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
      ),),
    );
  }
}
