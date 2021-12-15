// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_qpay_client/app/data/models/home_partners_model.dart';
// import 'package:flutter_qpay_client/app/data/models/partners_has_bonuses_model.dart';
// import 'package:flutter_qpay_client/base/base_bloc.dart';
// import 'package:flutter_qpay_client/core/freezed/network_error.dart';
// import 'package:flutter_qpay_client/core/freezed/result.dart';
// import 'package:flutter_qpay_client/data/data_methods.dart';
// import 'package:flutter_qpay_client/screens/home/provider/home_provider.dart';
// import 'package:flutter_qpay_client/services/send_to_friend_service.dart';

// class SendToFriendProvider extends BaseBloc {
//   SendToFriendService _sendToFriendService = SendToFriendService();
//   List<PartnersHasBonusesModel> partnerList = [];
//   Result<List<PartnersHasBonusesModel>, NetworkError>? partnerData;
//   int? cityId;

//   init(HomeProvider model) async {
//     cityId = await getCityId();
//     // getPartnersList(cityId);
//     partnerData = await _sendToFriendService.getSendToFriendPartnerList(model.cityId);
//     partnerData!.when(success: (response) {
//       partnerList = response;
//       notifyListeners();
//     }, failure: (error) {
//       log("Error: $error");
//     });
//   }

//   getPartnersList(HomeProvider model) async {
//     partnerData = await _sendToFriendService.getSendToFriendPartnerList(model.cityId);
//     partnerData!.when(success: (response) {
//       partnerList = response;
//       notifyListeners();
//     }, failure: (error) {
//       log("Error: $error");
//     });
//   }
// }