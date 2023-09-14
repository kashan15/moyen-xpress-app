import 'dart:convert';
import '../utils/input_validations.dart';

// DataModel dataModelFromJson(String str) =>
//     DataModel.fromJson(json.decode(str));
//
// String dataModelToJson(DataModel data) => json.encode(data.toJson());

// class DataModel{
//   DataModel({
//     this.result,
//     this.data
//   });
//   bool? result;
//   List<Data>? data;
//
//   factory DataModel.fromJson(Map<String, dynamic>? json) => DataModel(
//     result: json?["result"],
//     data: List<Data>.from(json?["data"].map((x) => Data.fromJson(x))),
//
//   );
//
//   Map<String, dynamic> toJson() => {
//     "result": result,
//     "data": List<dynamic>.from(data!.map((x) => x.toJson())),
//   };
//
// }
//
// class Data{
//   Data({
//     this.id,
//     this.name,
//     this.tags
//   });
//   dynamic id;
//   dynamic name;
//   dynamic tags;
//
//   factory Data.fromJson(Map<String, dynamic>? json) => Data(
//       id: json?["id"],
//       name: json?["name"],
//       tags: json?["tags"]
//
//   );
//
//    Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "tags": tags
//   };
// }




class DataModel {
  bool? result;
  String? message;
  List<Data>? homeData;

  DataModel({
    this.result,
    this.message,
    this.homeData
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    // var productDataJson = json['data']['flash_deals'] as List<dynamic>;
    var productDataJson = json['data']['daily_deals']as List<dynamic>;
    List<Data> productData = productDataJson.map((dealJson) => Data.fromJson(dealJson)).toList();

    return DataModel(
      result: json['result'],
      message: json['message'],
      homeData: productData,
    );
  }
}

class Data {
  int? id;
  String? name;
  String? tags;

  Data({
    this.id,
    this.name,
    this.tags,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        id: json['id'],
        name: json['name'],
        tags: json['tags']
    );
  }
}



