import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SliderPage extends StatefulWidget {
  @override
  _SlidePageState createState() => _SlidePageState();
}

class _SlidePageState extends State<SliderPage> {
  double _sliderValue = 0;
  double _sliderValue1 = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        //默认从0到1
        Slider(
          value: _sliderValue,
          onChanged: (v){
            print(v);
            setState(() {
              _sliderValue = v;
            });
          },
        ),
        SizedBox(height: 20,),
        Slider(
          min: 0,
          max: 100,
          label: _sliderValue1.toString(),
          divisions: 5,
          value: _sliderValue1,
          activeColor: Colors.red,
          inactiveColor: Colors.blue,
          onChanged: (v)=> setState(() {
            print(v);
            _sliderValue1 = v;
          }),
        )
      ],),),
    );
  }
}
