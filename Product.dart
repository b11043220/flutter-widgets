import 'package:flutter/material.dart';
import 'package:flutter_demo/Model/ProductModel.dart';

class ProductDemo extends StatefulWidget {
  @override
  _ProductDemoState createState() => _ProductDemoState();
}

class _ProductDemoState extends State<ProductDemo> {
  var productLists = [];
  @override
  void initState() {
    ProductModel.getProducts().then((products) {
      print('打印产品信息');
      print(products);
      setState(() {
        this.productLists = products;
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: ProductWrap(),
        ),
      ),
    );
  }

  List<Widget> ProductWrap() => List.generate(100, (index) {
    return GestureDetector(
      child: Container(
        width: 190,
        height: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
            border: Border.all(width: 1, color: Colors.grey)
        ),
        child: Text(
          "${index}",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onTap: ()=> debugPrint(index.toString()),
    );
  });
}
