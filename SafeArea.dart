import 'package:flutter/material.dart';

class SafeAreaPage extends StatefulWidget {
  @override
  _SafeAreaPageState createState() => _SafeAreaPageState();
}

//数据被设备顶部和底部明显被遮挡了，想要解决这个问题只需将ListView包裹在SafeArea中即可
class _SafeAreaPageState extends State<SafeAreaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: ListView(
          children: List.generate(100, (i) => Text('踏踏实实做事，干干净净做人')),
        ),
      ),
    );
  }
}

class SliverSafeAreaPage extends StatefulWidget {
  @override
  _SliverSafeAreaPageState createState() => _SliverSafeAreaPageState();
}

class _SliverSafeAreaPageState extends State<SliverSafeAreaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5
              ),
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  color: Colors.primaries[index % Colors.primaries.length],
                );
              }, childCount: 21),
            ),
          ),
        ],
      ),
    );
  }
}

