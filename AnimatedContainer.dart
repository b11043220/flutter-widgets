import 'package:flutter/material.dart';

//自带动画效果的Container组件
class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool _click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: GestureDetector(
        child: AnimatedContainer(
          width: _click?200:100,
          height: _click?200:100,
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          //动画持续时间
          duration: Duration(seconds: 1),
          child: Icon(Icons.star, color: Colors.blue,),
          //动画结束回调事件
          onEnd: ()=> setState(() {
            _click = !_click;
          }),
        ),
        onTap: ()=> setState(() {
          _click = !_click;
        }),
      ),),
    );
  }
}
