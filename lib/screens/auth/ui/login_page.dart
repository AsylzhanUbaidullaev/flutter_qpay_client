import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/auth/provider/login_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/custom_container.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';
import 'package:flutter_qpay_client/widgets/loading_view.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: BaseProvider<LoginProvider>(
        model: LoginProvider(),
        builder: (context, model, child) {
          return model.isLoading ? LoadingView() :
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(40),
                vertical: getProportionateScreenHeight(20)
              ),
              child: Column(
                children: [
                  UIHelper.verticalSpace(getProportionateScreenHeight(190)),
                  Text(
                    'Добро пожаловать!',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.blackColor,
                    ),
                  ),
                  UIHelper.verticalSpace(10),
                  Text(
                    'Введите ваш номер телефона для\nвхода или регистрации.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.grayColor,
                    ),
                  ),
                  UIHelper.verticalSpace(30),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(1),
                    ),
                    child: CustomContainer(
                      child: TextField(
                        controller: model.controller,
                        onChanged: (String value) {
                          model.checkPhoneNumber();
                        },
                        keyboardType: TextInputType.phone,
                        cursorColor: AppColors.blackColor,
                        inputFormatters: [
                          MaskedInputFormatter('### ### ####'),
                        ],
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: Text(
                              '+7  ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontFamily: 'Inter',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          hintText: 'XXX XXX XXXX',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  DefaultButton(
                    text: 'Дальше',
                    color: model.isButtonEnabled
                        ? null
                        : AppColors.inactiveColor,
                    press: model.isButtonEnabled
                        ? () async {model.toVerification(context);}
                        : null,
                    width: double.infinity,
                  
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
