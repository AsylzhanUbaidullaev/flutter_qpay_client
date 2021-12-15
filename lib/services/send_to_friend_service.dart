import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/clients/json_api_client.dart';
import 'package:flutter_qpay_client/app/data/models/partners_has_bonuses_model.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/core/network/layers/network_executer.dart';

class SendToFriendService {

  Future<Result<List<PartnersHasBonusesModel>, NetworkError>> getSendToFriendPartnerList(int cityId) async {
    return NetworkExecuter.execute(route: PlaceHolderClient.getSendFriendPartnerList(cityId), responseType: PartnersHasBonusesModel());
  }

  Future<Result<dynamic, NetworkError>> sendBonusToFriend(int partnerId, String phoneNumber, int bonus) async {
    return NetworkExecuter.execute(route: PlaceHolderClient.sendBonusToFriend(partnerId, phoneNumber, bonus));
  }

}