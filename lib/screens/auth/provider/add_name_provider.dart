import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/screens/index.dart';
import 'package:flutter_qpay_client/utilities/enums.dart';

class AddNameProvider extends BaseBloc {
  TextEditingController controller = TextEditingController();
  bool isButtonEnabled = false;
  
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
}