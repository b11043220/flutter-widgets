import 'package:flutter/material.dart';

class BorderPage extends StatefulWidget {
  @override
  _BorderPageState createState() => _BorderPageState();
}

class _BorderPageState extends State<BorderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Border 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: SingleChildScrollView(child: Column(children: [
        MaterialButton(
          padding: EdgeInsets.all(10),
          color: Colors.grey[200],
          //斜角矩形边框
          //如果设置的半径比控件还大，就会变成菱形.
          //如果半径设置为0，就是矩形
          shape: BeveledRectangleBorder(
            side: BorderSide(width: 1, color: Colors.red),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Text('斜角矩形边框', style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),),
          onPressed: ()=> debugPrint(''),
        ),
        SizedBox(height: 10,),
        MaterialButton(
          padding: EdgeInsets.all(10),
          color: Colors.grey[200],
          //上边框直线
          shape: Border(
            top: BorderSide(color: Colors.red, width: 2)
          ),
          child: Text('上边框直线', style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),),
          onPressed: ()=> debugPrint(''),
        ),
        SizedBox(height: 10,),
        MaterialButton(
          padding: EdgeInsets.all(10),
          color: Colors.grey[00],
          //设置全部边框
          shape: Border(
            top: BorderSide(color: Colors.red, width: 10),
            right: BorderSide(color: Colors.green, width: 10),
            bottom: BorderSide(color: Colors.blue, width: 10),
            left: BorderSide(color: Colors.deepOrange, width: 10),
          ),
          child: Text('设置全部边框', style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),),
          onPressed: ()=> debugPrint(''),
        ),
        SizedBox(height: 10,),
        MaterialButton(
          padding: EdgeInsets.all(10),
          color: Colors.grey[200],
          //方向边框
          shape: BorderDirectional(
            start: BorderSide(width: 2, color: Colors.red),
            end: BorderSide(width: 2, color: Colors.red),
          ),
          child: Text('方向边框', style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),),
          onPressed: ()=> debugPrint(''),
        ),
        SizedBox(height: 10,),
        MaterialButton(
          padding: EdgeInsets.all(40),
          color: Colors.grey[200],
          //圆形边框
          shape: CircleBorder(
            side: BorderSide(width: 2, color: Colors.red),
          ),
          child: Text('圆形边框', style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),),
          onPressed: ()=> debugPrint(''),
        ),
        SizedBox(height: 10,),
        MaterialButton(
          padding: EdgeInsets.all(10),
          color: Colors.grey[200],
          //圆角矩形
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2, color: Colors.red),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Text('圆角矩形', style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),),
          onPressed: ()=> debugPrint(''),
        ),
        SizedBox(height: 10,),
        MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          color: Colors.grey[200],
          //足球场的形状，两边圆形，中间矩形
          shape: StadiumBorder(
            side: BorderSide(width: 2, color: Colors.red),
          ),
          child: Text('足球场的形状', style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),),
          onPressed: ()=> debugPrint(''),
        ),
        SizedBox(height: 10,),
        MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          color: Colors.grey[200],
          //下划线边框
          shape: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.red),
          ),
          child: Text('下划线边框', style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),),
          onPressed: ()=> debugPrint(''),
        ),
      ],),),),
    );
  }
}

