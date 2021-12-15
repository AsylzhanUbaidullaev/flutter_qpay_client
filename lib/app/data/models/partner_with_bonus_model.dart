import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class PartnerWithBonusModel extends BaseNetworkModel<PartnerWithBonusModel>{
  int? id;
  String? avatar;
  String? name;
  String? bonusesSum;

  PartnerWithBonusModel({this.id, this.avatar, this.name, this.bonusesSum});

  PartnerWithBonusModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    name = json['name'];
    bonusesSum = json['bonuses_sum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['avatar'] = this.avatar;
    data['name'] = this.name;
    data['bonuses_sum'] = this.bonusesSum;
    return data;
  }

  @override
  PartnerWithBonusModel fromJson(Map<String, dynamic> json) {
    return PartnerWithBonusModel.fromJson(json);
  }
}
