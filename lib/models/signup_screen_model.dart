class SignupScreenModel{

  int? userId;
  String? email;
  String? password;
  String? name;
  String? deviceToken;


  SignupScreenModel({this.userId,this.name,this.email, this.password,this.deviceToken});

  SignupScreenModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    deviceToken = json['device_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['user_id'] = userId;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['device_token'] = deviceToken;
    return data;
  }
}