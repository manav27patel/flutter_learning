class InquiryData {
  bool? success;
  int? status;
  String? message;
  int? unReadInquiryCount;
  List<Data>? data;

  InquiryData(
      {this.success,
      this.status,
      this.message,
      this.unReadInquiryCount,
      this.data});

  InquiryData.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    unReadInquiryCount = json['unReadInquiryCount'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['status'] = this.status;
    data['message'] = this.message;
    data['unReadInquiryCount'] = this.unReadInquiryCount;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? inquiryId;
  int? isRead;
  String? createdAt;
  CustomerInfo? customerInfo;
  ProductInfo? productInfo;

  Data(
      {this.inquiryId,
      this.isRead,
      this.createdAt,
      this.customerInfo,
      this.productInfo});

  Data.fromJson(Map<String, dynamic> json) {
    inquiryId = json['inquiryId'];
    isRead = json['isRead'];
    createdAt = json['created_at'];
    customerInfo = json['customerInfo'] != null
        ? new CustomerInfo.fromJson(json['customerInfo'])
        : null;
    productInfo = json['productInfo'] != null
        ? new ProductInfo.fromJson(json['productInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['inquiryId'] = this.inquiryId;
    data['isRead'] = this.isRead;
    data['created_at'] = this.createdAt;
    if (this.customerInfo != null) {
      data['customerInfo'] = this.customerInfo!.toJson();
    }
    if (this.productInfo != null) {
      data['productInfo'] = this.productInfo!.toJson();
    }
    return data;
  }
}

class CustomerInfo {
  int? userId;
  String? name;
  String? image;
  String? mobile;
  String? email;
  String? latitude;
  String? longitude;
  String? address;

  CustomerInfo(
      {this.userId,
      this.name,
      this.image,
      this.mobile,
      this.email,
      this.latitude,
      this.longitude,
      this.address});

  CustomerInfo.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    name = json['name'];
    image = json['image'];
    mobile = json['mobile'];
    email = json['email'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['name'] = this.name;
    data['image'] = this.image;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['address'] = this.address;
    return data;
  }
}

class ProductInfo {
  String? productName;
  int? productPrice;
  String? productImage;

  ProductInfo({this.productName, this.productPrice, this.productImage});

  ProductInfo.fromJson(Map<String, dynamic> json) {
    productName = json['productName'];
    productPrice = json['productPrice'];
    productImage = json['productImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productName'] = this.productName;
    data['productPrice'] = this.productPrice;
    data['productImage'] = this.productImage;
    return data;
  }
}
