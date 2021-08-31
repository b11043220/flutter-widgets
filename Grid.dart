import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Demo'),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: GridView.count(
          crossAxisCount: 2,
          children: new List.generate(100, (index) {
            return Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              color: Colors.redAccent,
              child: Text(index.toString(), style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),),
            );
          }),
        ),
      ),
    );
  }
}
