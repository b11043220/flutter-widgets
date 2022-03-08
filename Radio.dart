import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  var _radioGroupValue = '语文';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                activeColor: Colors.red,
                value: '语文',
                groupValue: _radioGroupValue,
                onChanged: (value){
                  setState(() {
                    _radioGroupValue = value.toString();
                  });
                },
              ),
              Radio(
                activeColor: Colors.red,
                value: '数学',
                groupValue: _radioGroupValue,
                onChanged: (value){
                  setState(() {
                    _radioGroupValue = value.toString();
                  });
                },
              ),
              Radio(
                activeColor: Colors.red,
                value: '英语',
                groupValue: _radioGroupValue,
                onChanged: (value){
                  setState(() {
                    _radioGroupValue = value.toString();
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
              Flexible(
                child: RadioListTile(
                  title: Text('语文'),
                  value: '语文',
                  groupValue: _radioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      _radioGroupValue = value.toString();
                    });
                  },
                ),
              ),
              Flexible(
                child: RadioListTile(
                  title: Text('数学'),
                  value: '数学',
                  groupValue: _radioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      _radioGroupValue = value.toString();
                    });
                  },
                )
              ),
              Flexible(
                child: RadioListTile(
                  title: Text('英语'),
                  value: '英语',
                  groupValue: _radioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      _radioGroupValue = value.toString();
                    });
                  },
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}
