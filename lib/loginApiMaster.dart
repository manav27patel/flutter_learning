class LoginApiMaster {
  bool? success;
  String? message;
  Data? data;

  LoginApiMaster({this.success, this.message, this.data});

  LoginApiMaster.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? token;
  String? id;
  String? name;
  String? email;
  String? mobile;
  String? gender;
  String? image;
  int? role;

  Data(
      {this.token,
      this.id,
      this.name,
      this.email,
      this.mobile,
      this.gender,
      this.image,
      this.role});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    gender = json['gender'];
    image = json['image'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['role'] = this.role;
    return data;
  }
}
