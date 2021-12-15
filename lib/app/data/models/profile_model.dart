import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class ProfileModel extends BaseNetworkModel<ProfileModel> {
  String? image;
  String? name;
  String? phone;

  ProfileModel({this.image, this.name, this.phone});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['phone'] = this.phone;
    return data;
  }

  @override
  ProfileModel fromJson(Map<String, dynamic> json) {
    return ProfileModel.fromJson(json);
  }
}