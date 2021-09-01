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
      home: WidgetsLists(),
    );
  }
}


class WidgetsLists extends StatefulWidget {
  @override
  _WidgetsListsState createState() => _WidgetsListsState();
}

class _WidgetsListsState extends State<WidgetsLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets List'),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          shrinkWrap: true,
          children: [
            InkWell(
              child: _widgetWrap('Align'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new AlignDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Annimate'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new AnnimateDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Card'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new CardDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Container'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new ContainerDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('CustomScrollView'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new CustomScrollViewDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('DecoratedBox'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new DecoratedBoxDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Dialogue'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new DialogueDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Flex'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new FlexDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Grid'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new GridViewDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('GridViewBuilder'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new GridViewBuilderDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Layout'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new LayoutDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Listener'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new ListenerDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Product'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new ProductDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Scroll'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new ScrollDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Stack'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new StackDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('State'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new StateDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Stream'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new StreamDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('WillPopScope'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new WillPopScopeDemo()),
                );
              },
            ),
            InkWell(
              child: _widgetWrap('Wrap'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new WrapDemo()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _widgetWrap(String widgetName) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 1, color: Colors.black12))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widgetName, style: TextStyle(fontSize: 20),),
          Icon(Icons.chevron_right, size: 25, color: Colors.grey,)
        ],
      ),
    );
  }
}

