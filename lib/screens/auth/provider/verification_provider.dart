import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/screens/auth/ui/add_name_page.dart';

class VerificationProvider extends BaseBloc {
  bool isButtonEnabled = false;
  TextEditingController controller = TextEditingController();

  toAddNamePage(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddNamePage()));
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
}
