import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/login_response_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/screens/auth/ui/verification_page.dart';
import 'package:flutter_qpay_client/services/auth_service.dart';

class LoginProvider extends BaseBloc {
  TextEditingController controller = TextEditingController();

  bool isButtonEnabled = false;

  Result<LoginResponseModel, NetworkError>? loginData;
  AuthService _authService = AuthService();

  String? phoneError;

  toVerification(context) async {
    setLoading(true);
    loginData =
        await _authService.loginOrRegister(phoneNumber: controller.text);
    if (loginData != null) {
      loginData!.when(success: (response) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                VerificationPage(phoneNumber: response.phone)));
      }, failure: (error) {
        error.when(
          request: (error) {
            log('error is: ${error.response!.data['message']}');
            phoneError = error.response!.data['message'];
            notifyListeners();
          },
          type: (error) {},
          connectivity: (error) {},
        );
      });
    }

    setLoading(false);
  }

  checkPhoneNumber() {
    if (controller.text.length == 12) {
      setIsButtonEnabled(true);
    } else {
      setIsButtonEnabled(false);
    }
  }

  void setIsButtonEnabled(bool value) {
    isButtonEnabled = value;
    notifyListeners();
  }
}
