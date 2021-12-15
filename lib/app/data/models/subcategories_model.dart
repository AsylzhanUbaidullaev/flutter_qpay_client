import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class SubCategoriesModel extends BaseNetworkModel<SubCategoriesModel> {
  int? id;
  String? name;

  SubCategoriesModel({this.id, this.name});

  SubCategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }

  @override
  SubCategoriesModel fromJson(Map<String, dynamic> json) {
    return SubCategoriesModel.fromJson(json);
  }
}
