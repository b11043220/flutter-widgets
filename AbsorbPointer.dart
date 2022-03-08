import 'package:flutter/material.dart';

//AbsorbPointer是一种禁止用户输入的控件，比如按钮的点击、输入框的输入、ListView的滚动等.
//使用场景
//1、根据业务需求禁用/启用多个组件。
//2、根据业务需求禁用/启用整个App。
class AbsorbPointerPage extends StatefulWidget {
  @override
  _AbsorbPointerPageState createState() => _AbsorbPointerPageState();
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {
  bool absorbing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AbsorbPointer 组件'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(child: AbsorbPointer(
        absorbing: absorbing,//true:屏蔽默认行为；false:正常
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: absorbing?Color.fromRGBO(255, 0, 0, 0.1):Colors.red,
                onPressed: ()=> debugPrint('按钮1'),
                child: Text('按钮1'),
              ),
              SizedBox(width: 10,),
              MaterialButton(
                color: absorbing?Color.fromRGBO(0, 255, 0, 0.1):Colors.green,
                onPressed: ()=> debugPrint('按钮2'),
                child: Text('按钮2'),
              ),
              SizedBox(width: 10,),
              MaterialButton(
                color: absorbing?Color.fromRGBO(0, 0, 255, 0.1):Colors.blue,
                onPressed: ()=> debugPrint('按钮3'),
                child: Text('按钮3'),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.green,
                  child: Text('1'),
                ),
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.green,
                  child: Text('2'),
                ),
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.green,
                  child: Text('3'),
                ),
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.green,
                  child: Text('4'),
                ),
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.green,
                  child: Text('5'),
                ),
              ],
            ),
          )
        ],),
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> setState(() {
          absorbing = !absorbing;
        }),
        child: Icon(Icons.tab),
      ),
    );
  }
}
