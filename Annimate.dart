import 'package:flutter/material.dart';

class AnnimateDemo extends StatefulWidget {
  @override
  _AnnimateDemoState createState() => _AnnimateDemoState();
}

class _AnnimateDemoState extends State<AnnimateDemo> {
  ScrollController controller = ScrollController(initialScrollOffset: 0);
  bool showFloatingBtn = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.offset>1000) {
        setState(() {
          showFloatingBtn = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Annimate Demo'),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
            controller: controller,
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.list_alt),
                title: Text("标题$index"),
                subtitle: Text("详情内容$index"),
                trailing: Icon(Icons.chevron_right),
                onTap: ()=> debugPrint(index.toString()),
              );
            }
        ),
      ),
      floatingActionButton: showFloatingBtn?FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          controller.animateTo(0, duration: Duration(seconds: 2), curve: Curves.bounceIn);
        },
      ):null,
    );
  }
}
