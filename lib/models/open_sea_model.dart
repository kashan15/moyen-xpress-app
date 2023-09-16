import 'package:flutter/material.dart';

// class OpenseaModel {
//   OpenseaModel({
//     this.result,
//     this.message,
//     this.assets,
//   });
//
//   bool? result;
//   String? message;
//   List<Assets>? assets;
//
//   OpenseaModel.fromJson(Map<String, dynamic> json) {
//     assets = List.from(json['assets']).map((e) => Assets.fromJson(e)).toList();
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['assets'] = assets!.map((e) => e.toJson()).toList();
//     return _data;
//   }
// }
//
// class Assets {
//   Assets({
//    this.id,
//     this.name,
//     this.tags
//   });
//
//   int? id;
//   String? name;
//   String? tags;
//
//   Assets.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     tags = json['tags'];
//
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['id'] = id;
//     _data['name'] = name;
//     _data['tags'] = tags;
//     return _data;
//   }
// }

class OpenseaModel {
  bool? result;
  String? message;
  List<Assets>? homeData;

  OpenseaModel({
    this.result,
    this.message,
    this.homeData
  });

  factory OpenseaModel.fromJson(Map<String, dynamic> json) {
    // var productDataJson = json['data']['flash_deals'] as List<dynamic>;
    var productDataJson = json['data']['daily_deals']as List<dynamic>;
    List<Assets> productData = productDataJson.map((dealJson) => Assets.fromJson(dealJson)).toList();

    return OpenseaModel(
      result: json['result'],
      message: json['message'],
      homeData: productData,
    );
  }
}

class Assets {
  int? id;
  String? name;
  String? tags;

  Assets({
    this.id,
    this.name,
    this.tags,
  });

  factory Assets.fromJson(Map<String, dynamic> json) {
    return Assets(
        id: json['id'],
        name: json['name'],
        tags: json['tags']
    );
  }
}