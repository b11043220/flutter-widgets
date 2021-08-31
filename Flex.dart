import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class FlexDemo extends StatefulWidget {
  @override
  _FlexDemoState createState() => _FlexDemoState();
}

class _FlexDemoState extends State<FlexDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex Demo'),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.pink,
                  height: 100,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.pink,
                height: 100,
                width: 100,
              )
            ],
          )
        ],
      ),
    );
  }
}
