import 'package:flutter/material.dart';
import 'Container.dart';
import 'Wrap.dart';
import 'package:flutter_demo/Layout.dart';
import 'package:flutter_demo/Card.dart';
import 'State.dart';
import 'Align.dart';
import 'Flex.dart';
import 'Stack.dart';
import 'Scroll.dart';
import 'package:flutter_demo/Product.dart';
import 'Annimate.dart';
import 'Listener.dart';
import 'Stream.dart';
import 'Grid.dart';
import 'package:flutter_demo/GridViewBuilder.dart';
import 'DecoratedBox.dart';
import 'CustomScrollView.dart';
import 'WillPopScope.dart';
import 'Dialogue.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DialogueDemo(),
    );
  }
}