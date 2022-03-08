import 'package:flutter/material.dart';

class ActionClipPage extends StatefulWidget {
  @override
  _ActionClipPageState createState() => _ActionClipPageState();
}

class _ActionClipPageState extends State<ActionClipPage> {
  int _selectIndex = 0;
  List<String> _filters = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ActionClip 组件'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 10,),
          RawChip(
            //阴影
            elevation: 8,
            padding: EdgeInsets.all(10),
            backgroundColor: Colors.red,
            label: Text('RawClip'),
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
            //true:组件可用；false：组件不可用
            isEnabled: true,
            onPressed: ()=> debugPrint('RawClip：点击事件'),
            //设置点击函数，会自动显示删除的图标，否则不显示。
            onDeleted: ()=> debugPrint('RawClip：删除事件'),
            //删除图标颜色
            deleteIconColor: Colors.white,
            //删除toolip
            deleteButtonTooltipMessage: '删除',
            //true:选中；false：未选中
            selected: false,
            onSelected: (bool selected)=> debugPrint(selected.toString()),
          ),
          SizedBox(height: 20,),
          Wrap(
            spacing: 15,
            alignment: WrapAlignment.center,
            children: List.generate(9, (index) {
              return ChoiceChip(
                label: Text('ChoiceChip $index'),
                selected: _selectIndex == index,
                onSelected: (v) {
                  setState(() {
                    _selectIndex = index;
                  });
                },
              );
            }).toList(),
          ),
          SizedBox(height: 20,),
          Wrap(
            spacing: 15,
            alignment: WrapAlignment.center,
            children: List.generate(9, (index) {
              return FilterChip(
                label: Text('FilterChip $index'),
                selected: _filters.contains('$index'),
                onSelected: (v) {
                  setState(() {
                    if(v){
                      _filters.add('$index');
                    }else{
                      _filters.removeWhere((f){
                        return f == '$index';
                      });
                    }
                  });
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
