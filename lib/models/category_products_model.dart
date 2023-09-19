import 'package:flutter/material.dart';


/// First API Running
class CategoryProductsModel {
  bool? result;
  String? message;
  List<CategoryProducts>? categoryData;

  CategoryProductsModel({
    this.result,
    this.message,
    this.categoryData
  });

  factory CategoryProductsModel.fromJson(Map<String, dynamic> json) {
    var productDataJson = json['products'] as List<dynamic>;
    List<CategoryProducts> productData = productDataJson.map((dealJson) => CategoryProducts.fromJson(dealJson)).toList();

    return CategoryProductsModel(
      result: json['result'],
      message: json['message'],
      categoryData: productData,
    );
  }
}

class CategoryProducts {
  int? id;
  String? name;
  String? thumbnailImg;

  CategoryProducts({
    this.id,
    this.name,
    this.thumbnailImg
  });

  factory CategoryProducts.fromJson(Map<String, dynamic> json) {
    return CategoryProducts(
        id: json['id'],
        name: json['name'],
      thumbnailImg: json['thumbnail_img']
    );
  }
}
