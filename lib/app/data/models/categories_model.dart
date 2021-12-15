import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class CategoriesModel extends BaseNetworkModel<CategoriesModel> {
  int? id;
  String? name;
  String? icon;

  CategoriesModel({this.id, this.name, this.icon});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['icon'] = this.icon;
    return data;
  }

  @override
  CategoriesModel fromJson(Map<String, dynamic> json) {
    return CategoriesModel.fromJson(json);
  }
}
