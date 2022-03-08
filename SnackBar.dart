import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Text('SnackBar1', style: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),),
            onPressed: (){
              //移除已经弹出SnackBar
              ScaffoldMessenger.of(context).removeCurrentSnackBar();
              ScaffoldMessenger
                  .of(context)
                  .showSnackBar(SnackBar(content: Text('底部提示信息'), duration: Duration(seconds: 2),));
            },
          ),
          SizedBox(width: 10,),
          MaterialButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text('SnackBar2', style: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),),
            onPressed: (){
              //移除已经弹出SnackBar
              ScaffoldMessenger.of(context).removeCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Row(
                  children: <Widget>[
                    Icon(Icons.check,color: Colors.green,),
                    Text('下载成功')],
                ),
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds: 2),
              ));
            },
          ),
          SizedBox(width: 10,),
          MaterialButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Text('SnackBar3', style: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),),
            onPressed: (){
              //移除已经弹出SnackBar
              ScaffoldMessenger.of(context).removeCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Row(
                  children: <Widget>[
                    Icon(Icons.check,color: Colors.green,),
                    Text('下载成功')],
                ),
                action: SnackBarAction(
                  label: '确定',
                  onPressed: () {
                    print('确定');
                  },
                ),
                duration: Duration(seconds: 2),
              ));
            },
          ),
        ],
      ),),
    );
  }
}
