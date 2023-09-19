import 'package:flutter/material.dart';

class ShowMoreSellersModel {
  bool? result;
  String? message;
  List<TopSellers>? sellersData;
  // List<Assets2>? homeData2;
  // List<Assets3>? homeData3;

  ShowMoreSellersModel({
    this.result,
    this.message,
    this.sellersData
  });

  factory ShowMoreSellersModel.fromJson(Map<String, dynamic> json) {
    var productDataJson = json['data']['top_sellers']as List<dynamic>;
    List<TopSellers> productData = productDataJson.map((dealJson) => TopSellers.fromJson(dealJson)).toList();

    return ShowMoreSellersModel(
      result: json['result'],
      message: json['message'],
      sellersData: productData,
    );
  }
}

class TopSellers {
  int? id;
  String? name;

  TopSellers({
    this.id,
    this.name,
  });

  factory TopSellers.fromJson(Map<String, dynamic> json) {
    return TopSellers(
      id: json['id'],
      name: json['name'],
    );
  }
}

