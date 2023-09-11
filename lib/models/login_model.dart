import 'dart:convert';
import 'package:moyen_xpress_app/models/user_model.dart';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());


class LoginModel{
  bool? result;
  String? message;
  String? accessToken;
  String? tokenType;
  UserModel? user;

  LoginModel({
    this.result,
    this.message,
    this.accessToken,
    this.tokenType,
    this.user
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    result: json["result"],
    message: json["message"],
    accessToken: json["access_token"],
    tokenType: json["token_type"],
    user: UserModel.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "message": message,
    "access_token": accessToken,
    "token_type": tokenType,
    "user": user?.toJson(),
  };
}