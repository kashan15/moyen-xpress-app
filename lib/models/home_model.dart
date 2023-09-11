import 'data_model.dart';

class HomeModel{
  bool? result;
  String? message;
  DataModel? data;
  HomeModel({
    this.result,
    this.message,
    this.data
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    result: json["result"] ?? false,
    message: json["message"] ?? '-',
    data: DataModel.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "result": result ?? '-',
    "message": message?? '-',
    "data": data?.toJson(),
  };

}