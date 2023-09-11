
class UserModel {
  UserModel({
    this.id,
    this.type,
    this.name,
    this.email,
    this.avatar,
    this.avatarOriginal,
    this.phone,
  });

  int? id;
  String? type;
  String? name;
  String? email;
  dynamic avatar;
  dynamic avatarOriginal;
  String? phone;

  factory UserModel.fromJson(Map<String, dynamic>? json) => UserModel(
    id: json?["id"],
    type: json?["type"],
    name: json?["name"],
    email: json?["email"],
    // avatar: json?["avatar"] ?? '-',
    avatar: json?["avatar"],
    avatarOriginal: json?["avatar_original"],
    phone: json?["phone"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "name": name,
    "email": email,
    // "avatar": avatar,
    "avatar_original": avatarOriginal,
    "phone": phone,
  };
}