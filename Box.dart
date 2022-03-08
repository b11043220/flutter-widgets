import 'package:flutter/material.dart';

class BoxPage extends StatefulWidget {
  @override
  _BoxPageState createState() => _BoxPageState();
}

class _BoxPageState extends State<BoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Box 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: Center(child: Column(children: [
        ConstrainedBox(
          //限制子组件的最大宽度和长度
          constraints: BoxConstraints(
            maxHeight: 200,
            maxWidth: 200
          ),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: 200,
          height: 200,
          color: Colors.green,
          //UnconstrainedBox组件不对子组件做任何约束
          child: UnconstrainedBox(
            child: Container(
              width: 300,
              height: 150,
              color: Colors.red,
            ),
          ),
        ),

        SizedBox(height: 10,),
        SizedBox(
          height: 200,
          width: 200,
          child: RaisedButton(
            child: Text('this is SizedBox'),
            onPressed: (){},
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: 200,
          color: Colors.red,
          //设置宽高比
          child: AspectRatio(
            aspectRatio: 1/2,
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          //相对于父组件
          //宽度是父组件的50%
          //高度是父组件的50%
          child: FractionallySizedBox(
            widthFactor: .5,
            heightFactor: .5,
            child: Container(
              color: Colors.green,
            ),
          ),
        )
      ],),),),
    );
  }
}
