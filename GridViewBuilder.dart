import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatefulWidget {
  @override
  _GridViewBuilderDemoState createState() => _GridViewBuilderDemoState();
}

class _GridViewBuilderDemoState extends State<GridViewBuilderDemo> {
  List<String> imgList = [];

  @override
  void initState() {
    super.initState();
    getImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridviewBuilder Demo'),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child:Image.network(
                      imgList[index] ,
                      height: 200,
                      fit: BoxFit.cover,
                    )
                  ),
                  Text(index.toString(), style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              );
            }
        ),
      ),
    );
  }

  void getImages(){
    Future.delayed(Duration(seconds: 2),).then((e){
      setState(() {
        imgList.addAll([
          "https://img2.baidu.com/it/u=2655425281,517653904&fm=26&fmt=auto&gp=0.jpg",
          "https://img2.baidu.com/it/u=2519988887,3024875497&fm=26&fmt=auto&gp=0.jpg",
          "https://img0.baidu.com/it/u=2044853970,3480902302&fm=26&fmt=auto&gp=0.jpg",
          "https://img2.baidu.com/it/u=2623835964,226207760&fm=26&fmt=auto&gp=0.jpg",
          "https://img0.baidu.com/it/u=1993128450,1251245082&fm=26&fmt=auto&gp=0.jpg",
          "https://img2.baidu.com/it/u=3382765463,2779484476&fm=26&fmt=auto&gp=0.jpg",
          "https://img0.baidu.com/it/u=2394815712,4022168236&fm=26&fmt=auto&gp=0.jpg",
          "https://img0.baidu.com/it/u=2676179139,1179701571&fm=26&fmt=auto&gp=0.jpg",
          "https://img1.baidu.com/it/u=3102752725,4111308862&fm=26&fmt=auto&gp=0.jpg",
          "https://img0.baidu.com/it/u=1702782755,4224555005&fm=26&fmt=auto&gp=0.jpg"
        ]);
      });
    });
  }
}
