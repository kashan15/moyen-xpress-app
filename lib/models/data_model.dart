import 'dart:convert';
import '../utils/input_validations.dart';

DataModel dataModelFromJson(String str) =>
    DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel{
  DataModel({
    this.result,
    this.data
  });
  bool? result;
  List<Data>? data;

  factory DataModel.fromJson(Map<String, dynamic>? json) => DataModel(
    result: json?["result"],
    data: List<Data>.from(json?["data"].map((x) => Data.fromJson(x))),

  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };

}

class Data{
  Data({
    this.id,
    this.name,
    this.tags
  });
  int? id;
  String? name;
  String? tags;

  factory Data.fromJson(Map<String, dynamic>? json) => Data(
      id: json?["id"],
      name: json?["name"],
      tags: json?["tags"]

  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "tags": tags
  };
}


