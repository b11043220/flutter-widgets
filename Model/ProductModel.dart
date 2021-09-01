import 'package:flutter/services.dart';
import'dart:convert';
import'dart:async';

class ProductModel {
  String title;
  String imgPath;
  String vendor;
  double price;
  int commentsCnt;

  ProductModel(this.title, this.imgPath, this.vendor, this.price, this.commentsCnt) : super();

  ProductModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        imgPath = json['img'],
        vendor = json[' vendor'],
        price = json['price'],
        commentsCnt = json['comments'];

  static Future<List<ProductModel>> getProducts() async {
    // 1.读取json文件
    String jsonString = await rootBundle.loadString("assets/product.json");

    // 2.转成List或Map类型
    final jsonResult = json.decode(jsonString);

    // 3.遍历List，并且转成Anchor对象放到另一个List中
    List<ProductModel> products = [];
    for (Map<String, dynamic> map in jsonResult) {
      products.add(ProductModel.fromJson(map));
    }
    return products;
  }
}