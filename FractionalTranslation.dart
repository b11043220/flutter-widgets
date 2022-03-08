import 'package:flutter/material.dart';

class FractionalTranslationPage extends StatefulWidget {
  @override
  _FractionalTranslationPageState createState() => _FractionalTranslationPageState();
}

class _FractionalTranslationPageState extends State<FractionalTranslationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionalTranslation 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: FractionalTranslation(
            transformHitTests: false,
            translation: Offset(0.25, 0.2),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
        ),
      ],),),
    );
  }
}
