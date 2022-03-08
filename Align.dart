import 'package:flutter/material.dart';


class AlignPage extends StatefulWidget {
  @override
  _AlignPageState createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',
            ),
            fit: BoxFit.fill
          )
        ),
        child: Align(
          //alignment: Alignment.bottomRight,
          //alignment: Alignment.bottomLeft,
          //alignment: Alignment.bottomCenter,
          //alignment: Alignment.centerLeft,
          //alignment: Alignment.centerRight,
          //alignment: Alignment.center,
          //alignment: Alignment.topLeft,
          //alignment: Alignment.topCenter,
          alignment: Alignment.topRight,
          child: Text('Align对齐组件',style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),),
    );
  }
}
