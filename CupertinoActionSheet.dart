import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//CupertinoActionSheet组件是Cupertino（ios）风格底部弹出的提示框
class CupertinoActionSheetPage extends StatefulWidget {
  @override
  _CupertinoActionSheetPageState createState() => _CupertinoActionSheetPageState();
}

class _CupertinoActionSheetPageState extends State<CupertinoActionSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoActionSheet 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: MaterialButton(
        color: Colors.red,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Colors.red),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Text('点我', style: TextStyle(color: Colors.white),),
        onPressed: ()=> showCupertinoModalPopup(
          context: context,
          builder: (context) => CupertinoActionSheet(
            title: Text('提示'),
            message: Text('是否要删除当前项？'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text('删除'),
                onPressed: () {},
                //isDefaultAction属性设置为true时，文字加粗.
                isDefaultAction: true,
              ),
              CupertinoActionSheetAction(
                child: Text('暂时不删'),
                onPressed: () {},
                //isDestructiveAction属性设置为true时，文字颜色变为红色
                isDestructiveAction: true,
              ),
            ],
            //可选参数
            //设置取消按钮
            cancelButton: CupertinoActionSheetAction(
              child: Text('取消'),
              onPressed: ()=> Navigator.pop(context),
            ),
          )
        ),
      ),),
    );
  }
}
