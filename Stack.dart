import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StackPage extends StatefulWidget {
  @override
  _StackPageState createState() => _StackPageState();
}

//Stack组件可以将子组件叠加显示，根据子组件的顺利依次向上叠加
//IndexedStack是Stack的子类，Stack是将所有的子组件叠加显示，而IndexedStack只显示指定的子组件，通过index参数设置显示哪一个块儿

class _StackPageState extends State<StackPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 10,),
        IndexedStack(
          index: _index,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text('红色', style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text('绿色', style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('蓝色', style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              color: Colors.red,
              child: Text('Red', style: TextStyle(color: Colors.white),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              onPressed: ()=> setState(() {
                _index = 0;
              }),
            ),
            SizedBox(width: 10,),
            MaterialButton(
              color: Colors.green,
              child: Text('Green', style: TextStyle(color: Colors.white),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              onPressed: ()=> setState(() {
                _index = 1;
              }),
            ),
            SizedBox(width: 10,),
            MaterialButton(
              color: Colors.blue,
              child: Text('Blue', style: TextStyle(color: Colors.white),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              onPressed: ()=> setState(() {
                _index = 2;
              }),
            )
          ],
        )
      ],),),
    );
  }
}
