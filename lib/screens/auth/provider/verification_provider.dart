import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/post_sms_response_model.dart';
import 'package:flutter_qpay_client/app/main/user_data.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/screens/auth/ui/add_name_page.dart';
import 'package:flutter_qpay_client/screens/index.dart';
import 'package:flutter_qpay_client/services/auth_service.dart';
import 'package:flutter_qpay_client/utilities/enums.dart';

class VerificationProvider extends BaseBloc {
  bool isButtonEnabled = false;
  TextEditingController controller = TextEditingController();
  AuthService _authService = AuthService();
  UserData _userData = UserData();

  Result<PostSmsResponseModel, NetworkError>? postSmsData;

  toAddName(context, String? phoneNumber) async {
    setLoading(true);
    postSmsData = await _authService.postSmsCode(phoneNumber: phoneNumber, verificationCode: controller.text);
    if(postSmsData != null) {
      postSmsData!.when(success: (response) {
        log("Response is ${response.token}");
        log('PreFilling: ${response.preFillingRequired}');
        _userData.setToken(response.token!);
        _userData.setPrefillingRequired(response.preFillingRequired!);
        _userData.setCityData(2, "Алматы");
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => response.preFillingRequired!
                  ? AddNamePage()
                  : IndexScreen(selectedMenuFromInitial: MenuState.home,),
            ),
            (route) => false,
          );
      }, failure: (error) {
        print("Error in toAddName method (VerificationProvider)");
      });
    }

    setLoading(false);
  }

  checkPinCode() {
    if(controller.text.length == 4) {
      setIsButtonEnabled(true);
    } else {
      setIsButtonEnabled(false);
    }
  }

  void setIsButtonEnabled(bool value) {
    isButtonEnabled = value;
    notifyListeners();
  }

  // toSendVerificationCode(String phoneNumber, String code, context) async {
  //   String? answer = await AuthService().toSendVerificationCode(phoneNumber, code);
  //   if (answer == "success") {
  //     toAddNamePage(context);
  //   } else {
  //     print('Error');
  //   }
  // }
}
