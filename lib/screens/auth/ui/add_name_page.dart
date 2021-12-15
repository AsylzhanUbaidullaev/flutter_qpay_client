import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/auth/provider/add_name_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/custom_container.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';

class AddNamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: BaseProvider<AddNameProvider>(
        model: AddNameProvider(),
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
                    'Ваше имя',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.blackColor,
                    ),
                  ),
                  UIHelper.verticalSpace(10),
                  Text(
                    'Введите ваше имя, которую мы будем отображать вашим партнерам',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.grayColor,
                    ),
                  ),
                  UIHelper.verticalSpace(30),
                  CustomContainer(
                      child: TextField(
                        controller: model.controller,
                        onChanged: (value) {
                          model.checkClientName();
                        },
                        keyboardType: TextInputType.text,
                        cursorColor: AppColors.blackColor,
                        decoration: InputDecoration(
                          hintText: 'Имя',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  Spacer(),
                  DefaultButton(
                    text: 'Подтвердить',
                    color: model.isButtonEnabled
                        ? null
                        : AppColors.inactiveColor,
                    press: model.isButtonEnabled
                        ? () async {model.saveClient(context, model.controller.text);}
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
