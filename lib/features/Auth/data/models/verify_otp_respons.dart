class VerifyOtpRespons {
  String? message;
  String? token;
  Customer? customer;

  VerifyOtpRespons({this.message, this.token, this.customer});

  VerifyOtpRespons.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    token = json['token'];
    customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['token'] = this.token;
    if (this.customer != null) {
      data['customer'] = this.customer!.toJson();
    }
    return data;
  }
}

class Customer {
  int? id;
  String? name;
  String? email;
  String? phone;
  Null? otp;
  String? gender;
  String? birthday;
  String? address;
  Null? zip;
  String? notes;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? image;

  Customer(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.otp,
      this.gender,
      this.birthday,
      this.address,
      this.zip,
      this.notes,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.image});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    otp = json['otp'];
    gender = json['gender'];
    birthday = json['birthday'];
    address = json['address'];
    zip = json['zip'];
    notes = json['notes'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['otp'] = this.otp;
    data['gender'] = this.gender;
    data['birthday'] = this.birthday;
    data['address'] = this.address;
    data['zip'] = this.zip;
    data['notes'] = this.notes;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image'] = this.image;
    return data;
  }
}
