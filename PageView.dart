import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(
          height: 200,
          child: PageView(
            controller: PageController(
              //全屏显示(横向)
              viewportFraction: 1,
              //默认显示的页面
              initialPage: 0
            ),
            scrollDirection: Axis.horizontal,
            children: [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
        )
      ],),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Text('1', style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 18
      ),),
    );
  }
}
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: Text('2', style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 18
      ),),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text('3', style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 18
      ),),
    );
  }
}

//无限循环
class LoopPageView extends StatefulWidget {
  @override
  _LoopPageViewState createState() => _LoopPageViewState();
}

class _LoopPageViewState extends State<LoopPageView> {
  List<Widget> pageList = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('无限循环'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SizedBox(
        height: 200,
        child: PageView.builder(
          itemCount: 10000,
          itemBuilder: (context, index) {
            return pageList[index % (pageList.length)];
          },
        ),
      ),
    );
  }
}
