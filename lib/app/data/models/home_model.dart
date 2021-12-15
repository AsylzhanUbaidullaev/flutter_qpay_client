import 'package:flutter_qpay_client/core/network/interfaces/base_client_generator.dart';
import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class HomeModel extends BaseNetworkModel<HomeModel>{
  String? bonus;
  int? saved;
  int? transactionsCount;
  int? partnersCount;
  int? notActivitedBonusesCount;

  HomeModel(
      {this.bonus,
      this.saved,
      this.transactionsCount,
      this.partnersCount,
      this.notActivitedBonusesCount});

  HomeModel.fromJson(Map<String, dynamic> json) {
    bonus = json['bonus'];
    saved = json['saved'];
    transactionsCount = json['transactions_count'];
    partnersCount = json['partners_count'];
    notActivitedBonusesCount = json['not_activited_bonuses_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bonus'] = this.bonus;
    data['saved'] = this.saved;
    data['transactions_count'] = this.transactionsCount;
    data['partners_count'] = this.partnersCount;
    data['not_activited_bonuses_count'] = this.notActivitedBonusesCount;
    return data;
  }

  @override
  HomeModel fromJson(Map<String, dynamic> json) {
    return HomeModel.fromJson(json);
  }
}
