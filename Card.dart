import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  TextStyle txtStyle = TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Demo'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          shrinkWrap: true,
          children: [
            _cardView(),
            _cardView(),
            _cardView(),
            _cardView(),
            _cardView(),
            _cardView(),
          ],
        ),
      ),
    );
  }

  Widget _cardView() {
    return Card(
      color: Colors.red,
      shadowColor: Colors.yellow,
      elevation: 5,
      margin: EdgeInsets.only(bottom: 10),
      child: Container(
        height: 200,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('人生得意须尽欢', style: txtStyle,),
            Text('莫使金樽空对月', style: txtStyle,)
          ],
        ),
      ),
    );
  }
}
