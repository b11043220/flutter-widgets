import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  String layoutType = 'image';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('商品列表'),
        elevation: 0,
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(layoutType=='image'?Icons.list:Icons.image, size: 30,),
            onPressed: (){
              setState(() {
                layoutType = layoutType=='image'?'list':'image';
              });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: layoutType=='image'?Wrap(
            spacing: 10,
            runSpacing: 10,
            children: productWrap(),
          ):Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: productList(),
          ),
        ),
      ),
    );
  }

  var titles = [
    '荣耀Play5T 22.5W超级快充 5000mAh大电池 6.5英寸护眼屏 全网通8GB+128GB',
    'Redmi 9A 5000mAh大电量 1300万AI相机 八核处理器 人脸解锁 4GB+64GB 砂石黑 游戏智能手机 小米 红米 【品质好物】',
    'Redmi Note 9 4G 6000mAh大电池 骁龙662处理器 18W快充 羽墨黑 6GB+128GB',
    'Redmi K40 旗舰骁龙870 三星AMOLED 120Hz高刷直屏 4800万高清三摄相机',
    '荣耀50 1亿像素超清影像 5G 6.57英寸超曲屏 66W超级快充 3200万像素高清自拍',
    'vivo iQOO 8 12GB+256GB 传奇版 120W超快闪充 骁龙888 液冷散热 KPL官方赛事',


  ];
  var imagePaths = [
    'https://img13.360buyimg.com/n7/jfs/t1/194751/15/16966/61334/610ba716E85c44a96/c42fb9e4ffa8bdd8.jpg',
    'https://img13.360buyimg.com/n7/jfs/t1/189548/10/15723/215338/6103e884E0399adb3/fea506be19969f49.jpg',
    'https://img13.360buyimg.com/n7/jfs/t1/192673/8/16185/126088/6107bc0dEa7388fb7/e1b424fdc6e7c37d.jpg',
    'https://img11.360buyimg.com/n7/jfs/t1/194980/38/16518/91613/610bc5ecE992cd33c/1cace950828b68f2.jpg',
    'https://img14.360buyimg.com/n7/jfs/t1/172293/31/15213/103248/60cc640eEc8781f91/731a4686b7b2ac11.jpg',
    'https://img10.360buyimg.com/n7/jfs/t1/200522/23/4906/106778/61277360E142e9ac3/9d827a1e37126e26.jpg',
    ''
  ];
  var vendors = [
    '荣耀京东自营旗舰店',
    '小米京东自营旗舰店',
    '小米京东自营旗舰店',
    '小米京东自营旗舰店',
    '荣耀京东自营旗舰店',
    'vivo京东自营旗舰店'
  ];
  var comment = [
    200,
    400,
    500,
    450,
    600,
    450
  ];

  TextStyle titleStyle = TextStyle(
      fontSize: 18,
      color: Colors.black54
  );
  TextStyle commentStyle = TextStyle(
      fontSize: 18,
      color: Colors.blueAccent,
      fontWeight: FontWeight.bold
  );

  List<Widget> productList() => titles.asMap().keys.map((item)=>GestureDetector(
    child: Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 120,
            child: Image.network(
              imagePaths[item],
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 240,
            child: Column(children: [
              Text(titles[item],
                style: titleStyle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10,),
              Row(children: [
                Text(comment[item].toString()+'+', style: commentStyle,),
                SizedBox(width: 10,),
                Text('评论',
                  style: TextStyle(color: Colors.grey,fontSize: 18),
                )
              ],),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(vendors[item], style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                  ),),
                  SizedBox(width: 5,),
                  Icon(Icons.chevron_right, size: 20, color: Colors.grey,)
                ],
              ),
              SizedBox(height: 10,),
            ],),
          )
        ],
      ),
    ),
    onTap: (){

    },
  )).toList();

  List<Widget> productWrap() => titles.asMap().keys.map((item)=>GestureDetector(
    child: Container(
      width: 190,
      height: 360,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.network(imagePaths[item]),
          SizedBox(height: 10,),
          Text(titles[item],
            style: titleStyle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10,),
          Row(children: [
            Text(comment[item].toString()+'+', style: commentStyle,),
            SizedBox(width: 10,),
            Text('评论',
              style: TextStyle(color: Colors.grey,fontSize: 18),
            )
          ],),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(vendors[item], style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
              ),),
              SizedBox(width: 5,),
              Icon(Icons.contact_phone, size: 20, color: Colors.lightBlue[300],)
            ],
          ),
          SizedBox(height: 10,),
          Row(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text('自营', style: TextStyle(color: Colors.white),),
            ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text('精品', style: TextStyle(color: Colors.white),),
            )
          ],)
        ],
      ),
    ),
    onTap: (){

    },
  )).toList();
}
