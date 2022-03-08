import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListTilePage extends StatefulWidget {
  @override
  _ListTilePageState createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListTile(
          leading: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage('https://t7.baidu.com/it/u=3601447414,1764260638&fm=193&f=GIF'), fit: BoxFit.fill)
            ),
          ),
          title: Text('唐诗三百首'),
          subtitle: Text(
            '人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。',
            maxLines: 2,
            overflow: TextOverflow.ellipsis
          ),
          isThreeLine: false,
          trailing: Icon(Icons.sort),
        ),
      ),),
    );
  }
}
