class LoginScreenModel{
  String? email;
  String? password;
  String? deviceToken;

  LoginScreenModel({this.email, this.password,this.deviceToken});

  LoginScreenModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    deviceToken = json['device_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['device_token'] = password;
    return data;
  }
}