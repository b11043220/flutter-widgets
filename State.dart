import 'package:flutter/material.dart';

class StateDemo extends StatefulWidget {
  @override
  _StateDemoState createState() => _StateDemoState();
}

class _StateDemoState extends State<StateDemo> {
  int _counter = 0;

  TextStyle txtStyle = TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 20
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Demo'),
        elevation: 0,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _minusView(),
            _txtView(),
            _addView(),
          ],
        ),
      ),
    );
  }

  Widget _addView() {
    return InkWell(
      child: Container(
        width: 40,
        height: 40,
        color: Colors.red,
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text('+', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      onTap: (){
        setState(() {
          _counter++;
        });
      },
    );
  }

  Widget _minusView() {
    return InkWell(
      child: Container(
        width: 40,
        height: 40,
        color: Colors.red,
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text('-', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      onTap: (){
        setState(() {
          _counter--;
        });
      },
    );
  }

  Widget _txtView() {
    return Container(
      width: 60,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(width: 1, color: Colors.black26),
            bottom: BorderSide(width: 1, color: Colors.black26),
          )
      ),
      child: Text(_counter.toString(), style: txtStyle,),
    );
  }
}
