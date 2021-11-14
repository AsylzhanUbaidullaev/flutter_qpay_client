import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/auth/provider/verification_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';
import 'package:pinput/pin_put/pin_put.dart';

class VerificationPage extends StatelessWidget {

  final String phoneNumber;

  const VerificationPage({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseProvider<VerificationProvider> (
        model: VerificationProvider(),
        builder: (context, model, child) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(40),
                vertical: getProportionateScreenHeight(20)
              ),
              child: Column(
                children: [
                  UIHelper.verticalSpace(getProportionateScreenHeight(190)),
                  Text(
                    'Введите код',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.blackColor,
                    ),
                  ),
                  UIHelper.verticalSpace(10),
                  Text(
                    'На ваш номер отправлен SMS-код.\nВведите его.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.grayColor,
                    ),
                  ),
                  UIHelper.verticalSpace(30),
                  PinPut(
                      fieldsCount: 4,
                      withCursor: true,
                      controller: model.controller,
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                      ),
                      onChanged: (value) async {
                        model.checkPinCode();
                      },
                      fieldsAlignment: MainAxisAlignment.center,
                      eachFieldWidth: 40.0,
                      eachFieldHeight: 54.0,
                      eachFieldMargin: EdgeInsets.only(right: 10),
                      submittedFieldDecoration: kPinPutDecoration,
                      selectedFieldDecoration: kPinPutDecoration,
                      followingFieldDecoration: kPinPutDecoration,
                      pinAnimationType: PinAnimationType.fade,
                      onSubmit: (String pin) {
                        print(pin);
                      },
                    ),
                  Spacer(),
                  DefaultButton(
                    text: 'Подтвердить',
                    color: model.isButtonEnabled
                        ? null
                        : AppColors.inactiveColor,
                    press: model.isButtonEnabled
                        ? () async {model.toAddNamePage(context);}
                        : null,
                    width: double.infinity,
                  
                  ),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
