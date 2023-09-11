import 'dart:convert';

SignupModel signupModelFromJson(String str) => SignupModel.fromJson(json.decode(str));

String signupModelToJson(SignupModel data) => json.encode(data.toJson());

class SignupModel{
  bool? result;
  String? message;
  int? userId;
  SignupModel({
    this.result,
    this.message,
    this.userId
  });

  factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
      result: json["result"],
      message: json["message"],
      userId: json["id"]
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "message": message,
    "id": userId
  };
}