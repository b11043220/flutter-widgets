import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridviewPage extends StatefulWidget {
  @override
  _GridviewPageState createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: Column(children: [
        GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing:8,
            crossAxisSpacing: 8,
            crossAxisCount: 2,
          ),
          children: List.generate(10, (index) {
            return Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: Text('人生得意须尽欢$index', style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: '微软雅黑',
                fontWeight: FontWeight.bold
              ),),
            );
          },),
        ),
        SizedBox(height: 8,),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: Text('莫使金樽空对月$index', style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: '微软雅黑',
                fontWeight: FontWeight.bold
              ),),
            );
          },
          itemCount: 10,
        ),
        SizedBox(height: 8,),
        GridView.custom(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8
          ),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('天生我材必有用$index', style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: '微软雅黑',
                fontWeight: FontWeight.bold
              ),),
            );
          }, childCount: 10),
        ),
        SizedBox(height: 8,),
        GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: List.generate(10, (index) {
            return Container(
              color: Colors.deepOrange,
              alignment: Alignment.center,
              child: Text('千金散尽还复来$index', style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: '微软雅黑',
                fontWeight: FontWeight.bold
              ),),
            );
          }),
        )
      ],),),
    );
  }
}
