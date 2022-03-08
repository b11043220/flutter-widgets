import 'package:flutter/material.dart';

class ShaderMaskPage extends StatefulWidget {
  @override
  _ShaderMaskPageState createState() => _ShaderMaskPageState();
}

class _ShaderMaskPageState extends State<ShaderMaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShaderMask 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          //线性渐变
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red,Colors.blue,Colors.green],
              ).createShader(bounds);
            },
            blendMode: BlendMode.color,
            child: Image.network(
              'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10,),
          //放射状渐变
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return RadialGradient(
                radius: .5,
                colors: <Color>[Colors.red, Colors.blue],
              ).createShader(bounds);
            },
            blendMode: BlendMode.color,
            child: Image.network(
              'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10,),
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [Colors.blue, Colors.red, Colors.green],
                tileMode: TileMode.mirror,
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Text(
              '踏踏实实做事，干干净净做人。',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
