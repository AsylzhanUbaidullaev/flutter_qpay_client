import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/main/user_data.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/screens/index.dart';
import 'package:flutter_qpay_client/services/auth_service.dart';
import 'package:flutter_qpay_client/utilities/enums.dart';

class AddNameProvider extends BaseBloc {
  TextEditingController controller = TextEditingController();
  bool isButtonEnabled = false;
  AuthService _authService = AuthService();
  UserData _userData = UserData();
  Result<dynamic, NetworkError>? addNameData;

  saveClient(context, String clientName) async {
    setLoading(true);
    addNameData = await _authService.preFilling(clientName);
    addNameData!.when(success: (response) {
      _userData.setPrefillingRequired(false);
      toHomePage(context);
    }, failure: (error) {
      print("Error in SaveCLient method (AddNameProvider)");
    });

    setLoading(false);
  }

  
  toHomePage(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => IndexScreen(selectedMenuFromInitial: MenuState.home)));
  }

  checkClientName() {
    if(controller.text.length > 0) {
      setIsButtonEnabled(true);
    } else {
      setIsButtonEnabled(false);
    }
  }

  void setIsButtonEnabled(bool value) {
    isButtonEnabled = value;
    notifyListeners();
  }

  // saveClient(context, String name) async {
  //   String? answer = await AuthService().toFillName(name);
  //   print(answer);
  //   if(answer == 'success') {
  //     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => IndexScreen(selectedMenuFromInitial: MenuState.home)), (route) => false);
  //   } else {
  //     print("Can't push to home page");
  //   }
  // }
}