import 'package:flutter/material.dart';


/// First API Running
class ShowMoreProductsModel {
  bool? result;
  String? message;
  List<DailyDeals>? homeData;
  // List<Assets2>? homeData2;
  // List<Assets3>? homeData3;

  ShowMoreProductsModel({
    this.result,
    this.message,
    this.homeData
  });

  factory ShowMoreProductsModel.fromJson(Map<String, dynamic> json) {
    var productDataJson = json['data']['daily_deals']as List<dynamic>;
    List<DailyDeals> productData = productDataJson.map((dealJson) => DailyDeals.fromJson(dealJson)).toList();

    return ShowMoreProductsModel(
      result: json['result'],
      message: json['message'],
      homeData: productData,
    );
  }
}

class DailyDeals {
  int? id;
  String? name;
  String? tags;
  String? thumbnailImg;

  DailyDeals({
    this.id,
    this.name,
    this.tags,
    this.thumbnailImg
  });

  factory DailyDeals.fromJson(Map<String, dynamic> json) {
    return DailyDeals(
        id: json['id'],
        name: json['name'],
        thumbnailImg: json['thumbnail_img'],
        tags: json['tags'],
    );
  }
}

