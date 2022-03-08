import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {
  @override
  _AnimatedAlignPageState createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  var _alignment = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedAlign 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Container(
        width: 300,
        height: 300,
        color: Colors.lightBlue,
        child: AnimatedAlign(
          //动画曲线设置
          curve: Curves.decelerate,
          alignment: _alignment,
          //动画持续时间
          duration: Duration(seconds: 4),
          child: IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.red,size: 40,),
            onPressed: ()=> setState((){
              _alignment = Alignment.bottomRight;
            }),
          ),
          //动画执行完毕回调事件
          onEnd: ()=> debugPrint('动画结束回调事件'),
        ),
      ),),
    );
  }
}
