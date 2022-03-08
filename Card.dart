import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Container(
        width: 400,
        height: 205,
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.black12),
            borderRadius: BorderRadius.circular(10)
          ),
          elevation: 5,
          shadowColor: Colors.grey[200],
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Text('唐诗三百首', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('人生得意须尽欢,', style: TextStyle(fontSize: 18,)),
                  Text('莫使金樽空对月', style: TextStyle(fontSize: 18,)),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('天生我材必有用,', style: TextStyle(fontSize: 18,)),
                  Text('千金散尽还复来', style: TextStyle(fontSize: 18,)),
                ],
              ),
              SizedBox(height: 10,),
              ButtonBar(children: <Widget>[
                MaterialButton(
                  color: Colors.red,
                  child: const Text('我会背了'),
                  onPressed: () {},
                ),
                MaterialButton(
                  color: Colors.red,
                  child: const Text('马上就背'),
                  onPressed: () {},
                ),],
              ),],
            ),
          ),
        ),
      ),),
    );
  }
}
