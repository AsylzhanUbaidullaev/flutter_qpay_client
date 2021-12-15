import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class PostSmsResponseModel extends BaseNetworkModel<PostSmsResponseModel> {
  bool? preFillingRequired;
  String? token;

  PostSmsResponseModel({this.preFillingRequired, this.token});

  PostSmsResponseModel.fromJson(Map<String, dynamic> json) {
    preFillingRequired = json['pre-filling_required'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pre-filling_required'] = this.preFillingRequired;
    data['token'] = this.token;
    return data;
  }

  @override
  PostSmsResponseModel fromJson(Map<String, dynamic> json) {
    return PostSmsResponseModel.fromJson(json);
  }
}
