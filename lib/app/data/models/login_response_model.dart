import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class LoginResponseModel extends BaseNetworkModel<LoginResponseModel> {
  String? phone;

  LoginResponseModel({this.phone});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    this.phone = json["phone"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["phone"] = this.phone;
    return data;
  }

  @override
  LoginResponseModel fromJson(Map<String, dynamic> json) {
    return LoginResponseModel.fromJson(json);
  }
}
