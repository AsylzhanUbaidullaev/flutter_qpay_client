import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class PartnersHasBonusesModel extends BaseNetworkModel<PartnersHasBonusesModel>{
  int? id;
  String? avatar;
  String? name;
  String? bonusesSum;

  PartnersHasBonusesModel({this.id, this.avatar, this.name, this.bonusesSum});

  PartnersHasBonusesModel.fromJson(Map<String, dynamic> json) {
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
  PartnersHasBonusesModel fromJson(Map<String, dynamic> json) {
    return PartnersHasBonusesModel.fromJson(json);
  }
}
