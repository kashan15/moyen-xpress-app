// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  ProfileModel({
    this.result,
    this.data,
    this.message,
  });

  bool? result;
  ProfileDataModel? data;
  String? message;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    result: json["result"],
    data: ProfileDataModel.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "data": data!.toJson(),
    "message": message,
  };
}

class ProfileDataModel {
  ProfileDataModel({
    this.name,
    this.email,
    this.phone,
    this.profile_pic,
    this.address
  });

  String? name;
  String? email;
  String? phone;
  String? profile_pic;
  String? address;

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) =>
      ProfileDataModel(
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        profile_pic: json["profile_pic"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "phone": phone,
    "profile_pic": profile_pic,
    "address": address
  };
}
