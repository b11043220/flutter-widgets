import 'package:flutter/material.dart';

class BottomAppBarPage extends StatefulWidget {
  @override
  _BottomAppBarPageState createState() => _BottomAppBarPageState();
}

class _BottomAppBarPageState extends State<BottomAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBar 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        //阴影值
        elevation: 8.0,
        //缺口外边距
        notchMargin: 8,
        //圆形
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: (){},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('发布', style: TextStyle(
          color: Colors.white,
          fontSize: 18
        ),),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(),
    );
  }
}


class BottomAppBar1Page extends StatefulWidget {
  @override
  _BottomAppBar1PageState createState() => _BottomAppBar1PageState();
}

class _BottomAppBar1PageState extends State<BottomAppBar1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBar 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        notchMargin: 8,
        shape: AutomaticNotchedShape(RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: (){},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: new Icon(Icons.add),
        label: const Text("发布"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
