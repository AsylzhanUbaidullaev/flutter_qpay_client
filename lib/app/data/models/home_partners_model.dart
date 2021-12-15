import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class Partners extends BaseNetworkModel<Partners> {
  int? id;
  String? avatar;
  String? name;
  String? bonusesSum;
  int? bonusPercentage;

  Partners(
      {this.id, this.avatar, this.name, this.bonusesSum, this.bonusPercentage});

  Partners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    name = json['name'];
    bonusesSum = json['bonuses_sum'];
    bonusPercentage = json['bonus_percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['avatar'] = this.avatar;
    data['name'] = this.name;
    data['bonuses_sum'] = this.bonusesSum;
    data['bonus_percentage'] = this.bonusPercentage;
    return data;
  }

  @override
  Partners fromJson(Map<String, dynamic> json) {
    return Partners.fromJson(json);
  }
}
