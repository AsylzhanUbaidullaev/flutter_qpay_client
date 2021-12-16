import 'package:flutter_qpay_client/app/data/models/transaction_by_type_model.dart';
import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class TransactionDetailsModel extends BaseNetworkModel<TransactionDetailsModel>{
  Detail? detail;
  Partner? partner;

  TransactionDetailsModel({this.detail, this.partner});

  TransactionDetailsModel.fromJson(Map<String, dynamic> json) {
    detail =
        json['detail'] != null ? new Detail.fromJson(json['detail']) : null;
    partner =
        json['partner'] != null ? new Partner.fromJson(json['partner']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.detail != null) {
      data['detail'] = this.detail!.toJson();
    }
    if (this.partner != null) {
      data['partner'] = this.partner!.toJson();
    }
    return data;
  }

  @override
  TransactionDetailsModel fromJson(Map<String, dynamic> json) {
    return TransactionDetailsModel.fromJson(json);
  }
}

class Detail {
  int? id;
  String? type;
  String? avatar;
  String? name;
  String? phone;
  String? amount;
  int? bonus;
  int? bonusPercentage;
  String? bonusColor;
  String? createdUserName;
  String? createdUserPhone;
  String? createdAt;

  Detail(
      {this.id,
      this.type,
      this.avatar,
      this.name,
      this.phone,
      this.amount,
      this.bonus,
      this.bonusPercentage,
      this.bonusColor,
      this.createdUserName,
      this.createdUserPhone,
      this.createdAt});

  Detail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    avatar = json['avatar'];
    name = json['name'];
    phone = json['phone'];
    amount = json['amount'];
    bonus = json['bonus'];
    bonusPercentage = json['bonus_percentage'];
    bonusColor = json['bonus_color'];
    createdUserName = json['created_user_name'];
    createdUserPhone = json['created_user_phone'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['avatar'] = this.avatar;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['amount'] = this.amount;
    data['bonus'] = this.bonus;
    data['bonus_percentage'] = this.bonusPercentage;
    data['bonus_color'] = this.bonusColor;
    data['created_user_name'] = this.createdUserName;
    data['created_user_phone'] = this.createdUserPhone;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Partner {
  int? id;
  String? name;
  String? image;

  Partner({this.id, this.name, this.image});

  Partner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}
