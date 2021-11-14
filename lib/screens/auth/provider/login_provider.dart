import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/screens/auth/ui/verification_page.dart';
import 'package:flutter_qpay_client/services/auth_service.dart';

class LoginProvider extends BaseBloc {
  TextEditingController controller = TextEditingController();

  bool isButtonEnabled = false;

  toVerificationPage(context) async {
    String? answer = await AuthService().toRegisterOrLogin('+7 ${controller.text}');

    if(answer == 'success') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => VerificationPage(
                  phoneNumber: '+7 ${controller.text}',
                )));
    } else {
      print("Error during logging in");
    }
  
  }

  checkPhoneNumber() {
    if (controller.text.length == 13) {
      setIsButtonEnabled(true);
    } else {
      setIsButtonEnabled(false);
    }
  }

  void setIsButtonEnabled(bool value) {
    isButtonEnabled = value;
    notifyListeners();
  }

  toVerification(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VerificationPage(
          phoneNumber: "+7 ${controller.text}",
        ),
      ),
    );
  }

  // toRegisterOrLogin(context) async {
  //   String? answer =
  //       await AuthService().toRegisterOrLogin("+7 ${controller.text}");

  //   if (answer == "success") {
  //     toVerification(context);
  //   } else {
  //     print('Error');
  //   }
  // }
}
