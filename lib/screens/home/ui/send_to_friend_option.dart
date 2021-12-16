import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:flutter_qpay_client/screens/index.dart';
import 'package:flutter_qpay_client/utilities/enums.dart';
import 'package:flutter_qpay_client/widgets/loading_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/home/provider/send_to_friend_option_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_with_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_qpay_client/widgets/custom_container.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';

class SendToFriendOptionPage extends StatelessWidget {
  final int? partnerIndex;
  final String? partnerName;
  final String? availableBonus;

  const SendToFriendOptionPage({Key? key, required this.partnerIndex, required this.availableBonus, required this.partnerName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<SendToFriendOptionProvider>(
      model: SendToFriendOptionProvider(),
      builder: (context, model, child) {
        return model.isLoading ? LoadingView() :
        Scaffold(
          appBar: CustomAppBar(
            height: getProportionateScreenHeight(110),
            child: AppBarChildWithBackButton(title: 'Передать другу'),
            decoration: kAppBarDecoration,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                UIHelper.verticalSpace(30),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Партнер',
                        style: TextStyle(
                          color: AppColors.darkGrayColor,
                        ),
                      ),
                      UIHelper.verticalSpace(15),
                      Row(
                        children: [
                          SvgPicture.asset(AppSvgImages.ic_profile),
                          UIHelper.horizontalSpace(10),
                          Text(
                            partnerName!,
                            // partnerModel.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                UIHelper.verticalSpace(15),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Доступные бонусы',
                        style: TextStyle(
                          color: AppColors.darkGrayColor,
                        ),
                      ),
                      UIHelper.verticalSpace(10),
                      Text(
                        availableBonus!,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
                UIHelper.verticalSpace(15),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [kWhiteBoxshadow],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Сумма перевода',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.blackColor,
                        ),
                      ),
                      UIHelper.verticalSpace(15),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(8),
                          border: model.hasError
                              ? Border.all(color: AppColors.systemRedColor)
                              : null,
                        ),
                        child: TextField(
                          cursorColor: AppColors.blackColor,
                          controller: model.bonusController,
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            model.checkBonusValue(availableBonus!);
                            model.checkValues();
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '0 Б',
                          ),
                        ),
                      ),
                      model.hasError
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                UIHelper.verticalSpace(15),
                                Text(
                                  'У вас недостаточно бонусов',
                                  style: TextStyle(
                                    color: AppColors.systemRedColor,
                                  ),
                                ),
                              ],
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
                UIHelper.verticalSpace(15),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [kWhiteBoxshadow],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Номер друга',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.blackColor,
                        ),
                      ),
                      UIHelper.verticalSpace(15),
                      CustomContainer(
                        child: TextField(
                          controller: model.phoneController,
                          onChanged: (value) {
                            model.checkValues();
                          },
                          keyboardType: TextInputType.phone,
                          cursorColor: AppColors.blackColor,
                          inputFormatters: [
                            MaskedInputFormatter('### ### ####'),
                          ],
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () async {
                                // model.setContactNumber();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                width: 16,
                                height: 16,
                                child:
                                    SvgPicture.asset(AppSvgImages.ic_contact),
                              ),
                            ),
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
                            hintText: 'XXX XXX XX XX',
                            hintStyle: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                UIHelper.verticalSpace(150),
                _buildBottomNavbar(context, model)
              ],
            ),
          ),
        );
      },
    );
  }

  _buildBottomNavbar(context, SendToFriendOptionProvider provider) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -20),
            blurRadius: 16,
            spreadRadius: -4,
            color: AppColors.blackColor.withOpacity(0.05),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 20,
          ),
          child: DefaultButton(
            text: 'Передать',
            color: provider.isButtonEnabled ? null : AppColors.inactiveColor,
            width: double.infinity,
            press: () {
              provider.sendBonus(context, partnerIndex!);

              // Navigator.pushAndRemoveUntil(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) =>
              //             IndexScreen(selectedMenuFromInitial: MenuState.home)),
              //     (route) => false);

              // provider.sendBonus(context
              // partnerModel
            },
          ),
        ),
      ),
    );
  }
}
