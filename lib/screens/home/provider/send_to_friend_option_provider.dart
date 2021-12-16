import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/screens/home/provider/home_provider.dart';
import 'package:flutter_qpay_client/services/send_to_friend_service.dart';
import 'package:flutter_qpay_client/utilities/enums.dart';

import '../../index.dart';

class SendToFriendOptionProvider extends BaseBloc {
  TextEditingController bonusController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  int? bonus;

  bool isButtonEnabled = false;
  bool hasError = false;

  SendToFriendService _sendToFriendService = SendToFriendService();
  Result<dynamic, NetworkError>? bonusData;

  HomeProvider homeProvider = HomeProvider();

  sendBonus(context, int partnerId) async {
    setLoading(true);
    bonusData = await _sendToFriendService.sendBonusToFriend(partnerId, phoneController.text, int.parse(bonusController.text));
    bonusData!.when(success: (response) {
      //TODO send to alert dialog
      print("Succcess in SendBonus");
      Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    IndexScreen(selectedMenuFromInitial: MenuState.home)),
            (route) => false);
    }, failure: (error) {
      //TODO add alert dialog if send to incorrect number 
      log("Error in SendBonus (SendToFriendProvider)");
    });
    setLoading(false);
  }
  
  checkValues() {
    if (bonus == 0 ||
        phoneController.text.isEmpty ||
        hasError) {
      isButtonEnabled = false;
      notifyListeners();
    } else if (bonus != 0 &&
        phoneController.text.length == 12 &&
        !hasError) {
      isButtonEnabled = true;
      notifyListeners();
    }
  }

  checkBonusValue(String hasBonus) {
    if (bonus != 0) {
      if (int.parse(hasBonus) >= bonus!) {
        hasError = false;
        notifyListeners();
      } else {
        hasError = true;
        notifyListeners();
      }
    }
  }

  // sendBonus(context, 
  // // PartnerModel partnerModel
  // ) async {
  //   if (int.parse(bonusController.text) >= 10) {
  //     // String answer = await HomeServices().sendBonus(partnerModel.id,
  //     //     phoneController.text, int.parse(bonusController.text));
  //     // if (answer == "200") {
  //     //   show_message("success_sended".tr());
  //       Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) =>
  //                   IndexScreen(selectedMenuFromInitial: MenuState.home)),
  //           (route) => false);
  //     // }
  //   } else {
  //     // show_message("notify_bonus_minimum_error".tr());
  //   }
  // }
}