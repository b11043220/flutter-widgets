import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container组件'),
      ),
      body: Center(
        child: Container(
          height: 300,
          padding: EdgeInsets.all(50),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('锄禾日当午，', style: TextStyle(fontSize: 20),),
              Text('汗滴禾下土。', style: TextStyle(fontSize: 20),),
              Text('谁知盘中餐，', style: TextStyle(fontSize: 20),),
              Text('粒粒皆辛苦。', style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
