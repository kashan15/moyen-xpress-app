// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

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
    this.image,
    this.address
  });

  String? name;
  String? email;
  String? phone;
  String? image;
  String? address;

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) =>
      ProfileDataModel(
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        image: json["image"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "phone": phone,
    "image": image,
    "address": address
  };
}
