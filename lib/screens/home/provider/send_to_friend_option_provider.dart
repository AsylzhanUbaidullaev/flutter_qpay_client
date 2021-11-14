import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/models/partner_model.dart';
import 'package:flutter_qpay_client/utilities/enums.dart';

import '../../index.dart';

class SendToFriendOptionProvider extends BaseBloc {
  TextEditingController bonusController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  bool isButtonEnabled = false;
  bool hasError = false;
  
  checkValues() {
    if (bonusController.text.isEmpty ||
        phoneController.text.isEmpty ||
        hasError) {
      isButtonEnabled = false;
      notifyListeners();
    } else if (bonusController.text.isNotEmpty &&
        phoneController.text.length == 12 &&
        !hasError) {
      isButtonEnabled = true;
      notifyListeners();
    }
  }

  sendBonus(context, 
  // PartnerModel partnerModel
  ) async {
    if (int.parse(bonusController.text) >= 10) {
      // String answer = await HomeServices().sendBonus(partnerModel.id,
      //     phoneController.text, int.parse(bonusController.text));
      // if (answer == "200") {
      //   show_message("success_sended".tr());
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    IndexScreen(selectedMenuFromInitial: MenuState.home)),
            (route) => false);
      // }
    } else {
      // show_message("notify_bonus_minimum_error".tr());
    }
  }
}