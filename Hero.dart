import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HeroPage extends StatefulWidget {
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: Column(children: [
        Container(
          height: 200,
          color: Colors.blue,
        ),
        SizedBox(height: 10,),
        GridView(
          physics: NeverScrollableScrollPhysics(),//非常重要，否则不能滑动
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 3),
          children: List.generate(24, (index) {
            if (index == 6) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new HeroDemoPage()));
                },
                child: Hero(
                  tag: 'hero',
                  child: Container(
                    child: Image.network(
                      'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              );
            }
            return Container(
              color: Colors.red,
            );
          }),
        )
      ],),),
    );
  }
}

class HeroDemoPage extends StatefulWidget {
  @override
  _HeroDemoPageState createState() => _HeroDemoPageState();
}

class _HeroDemoPageState extends State<HeroDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP BAR'),
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Hero(
          tag: 'hero',
          child: Container(
            child: Image.network(
              'https://t7.baidu.com/it/u=4162611394,4275913936&fm=193&f=GIF',
              fit: BoxFit.fitWidth,
            ),
          ),
        )
      ),
    );
  }
}
