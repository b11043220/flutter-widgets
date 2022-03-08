import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertDialogPage extends StatefulWidget {
  @override
  _AlertDialogPageState createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text('Alert Dialog', style: TextStyle(color: Colors.white),),
            onPressed: ()=> showDialog(
              context: context,
              barrierDismissible: true,
              // false = user must tap button, true = tap outside dialog
              builder: (BuildContext dialogContext) {
                return AlertDialog(
                  title: Text('提示'),
                  content: Text('确认删除吗？'),
                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('确定'),
                      onPressed: () {
                        Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                      },
                    ),
                    FlatButton(
                      child: Text('取消'),
                      onPressed: () {
                        Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 10,),
          MaterialButton(
            color: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text('CupertinoDialog', style: TextStyle(color: Colors.white),),
            onPressed: ()=> showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text('提示'),
                  content: Text('确认删除吗？'),
                  actions: <Widget>[
                    CupertinoDialogAction(child: Text('取消'),onPressed: ()=> Navigator.pop(context),),
                    CupertinoDialogAction(child: Text('确认'),onPressed: (){},),
                  ],
                );
              }
            ),
          )
        ],
      ),),
    );
  }
}
