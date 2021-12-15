import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/home/ui/send_to_friend_option.dart';
import 'package:flutter_qpay_client/screens/partners/provider/partner_details_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_with_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';
import 'package:flutter_qpay_client/widgets/loading_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartnerDetailsPage extends StatelessWidget {
  final int? idPartner;
  const PartnerDetailsPage({Key? key, required this.idPartner})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<PartnerDetailsProvider>(
      onReady: (value) async => await value.init(context, idPartner),
      model: PartnerDetailsProvider(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: CustomAppBar(
            height: getProportionateScreenHeight(110),
            child: AppBarChildWithBackButton(title: 'Детали партнера'),
            decoration: kAppBarDecoration,
          ),
          body: model.isLoading
              ? LoadingView()
              : Scaffold(
                  body: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UIHelper.verticalSpace(30),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              // SvgPicture.asset(AppSvgImages.ic_profile_pic),
                              // SvgPicture.network(model.detailedPartnerModel!.avatar!),
                              // ??
                              SvgPicture.asset(AppSvgImages.ic_profile_pic),
                              UIHelper.horizontalSpace(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    model.detailedPartnerModel!.name!,
                                    // 'Shooqan',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                  UIHelper.verticalSpace(10),
                                  Text(
                                    model.detailedPartnerModel!.phone!,
                                    // '+7 747 633 8071',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: AppColors.grayColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(20),
                        Divider(height: 1),
                        UIHelper.verticalSpace(20),
                        Padding(
                          padding: EdgeInsets.only(left: 25, right: 41),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Мои бонусы',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.darkGrayColor,
                                    ),
                                  ),
                                  UIHelper.verticalSpace(15),
                                  Text(
                                    '${model.detailedPartnerModel!.bonusesSum!} Б',
                                    // '750 Б',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.systemGreenColor,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Кэшбэк',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.darkGrayColor,
                                    ),
                                  ),
                                  UIHelper.verticalSpace(15),
                                  Text(
                                    '${model.detailedPartnerModel!.bonusPercentage} %',
                                    // '5%',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(20),
                        Divider(height: 1),
                        UIHelper.verticalSpace(20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Дата активаций бонусов',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.darkGrayColor,
                                    ),
                                  ),
                                  UIHelper.verticalSpace(10),
                                  Text(
                                    // '5 Июля 2021',
                                    '${model.detailedPartnerModel!.bonusActivationPeriod ?? '-'}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                  UIHelper.verticalSpace(20),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Дата сгорания бонусов',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.darkGrayColor,
                                    ),
                                  ),
                                  UIHelper.verticalSpace(10),
                                  Text(
                                    '${model.detailedPartnerModel!.bonusBurnoutPeriod ?? '-'}',
                                    // '15 Июля 2021',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                  UIHelper.verticalSpace(20),
                                  Divider(height: 1),
                                ],
                              ),
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Описание',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.darkGrayColor,
                                ),
                              ),
                              UIHelper.verticalSpace(10),
                              Text(
                                // 'Shooqan Suits – это магазин уникальных и качестваенных костьюмов',
                                model.detailedPartnerModel!.description!,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.blackColor,
                                ),
                              ),
                              UIHelper.verticalSpace(20),
                            ],
                          ),
                        ),

                        Divider(height: 1),
                        UIHelper.verticalSpace(20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            'Категории',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.darkGrayColor,
                            ),
                          ),
                        ),
                        UIHelper.verticalSpace(15),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Wrap(
                            children: List.generate(
                              model.detailedPartnerModel!.categories!.length,
                              // 3,
                              (index) => Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(right: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffF4F4F4),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  model.detailedPartnerModel!.categories![index]
                                      .name!,
                                  // 'Костюмы',
                                ),
                              ),
                            ),
                          ),
                        ),
                        UIHelper.verticalSpace(20),
                        Divider(height: 1),
                        UIHelper.verticalSpace(20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'График работы',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.darkGrayColor,
                                ),
                              ),
                              UIHelper.verticalSpace(2),
                              UIHelper.verticalSpace(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Время работы:'),
                                  Text(
                                      '${model.detailedPartnerModel!.schedules!.schedules![0].fromTime!} - ${model.detailedPartnerModel!.schedules!.schedules![0].toTime!}'),
                                  Text(model.detailedPartnerModel!.schedules!
                                      .schedules![0].week!),
                                ],
                              ),
                              UIHelper.verticalSpace(5),
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(20),
                        Divider(height: 1),
                        UIHelper.verticalSpace(20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Контакты',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.darkGrayColor,
                                ),
                              ),
                              UIHelper.verticalSpace(19),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        AppSvgImages.ic_address,
                                        color: AppColors.darkGrayColor,
                                      ),
                                      UIHelper.horizontalSpace(15),
                                      Text(
                                        // 'Муканова 345',
                                        model.detailedPartnerModel!.contacts!
                                            .contactAddress!,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  UIHelper.verticalSpace(18),
                                ],
                              ),
                              // snapshot.data.contacts.contactPhone == null
                              //     ? SizedBox()
                              //     :
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        AppSvgImages.ic_phone,
                                        color: AppColors.darkGrayColor,
                                      ),
                                      UIHelper.horizontalSpace(15),
                                      Text(
                                        model.detailedPartnerModel!.contacts!
                                            .contactPhone!,
                                        // '+7 747 633 8071',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  UIHelper.verticalSpace(18),
                                ],
                              ),
                              // snapshot.data.contacts.contactWebsiteLink ==
                              //         null
                              //     ? SizedBox()
                              //     :
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AppSvgImages.ic_globe,
                                    color: AppColors.darkGrayColor,
                                  ),
                                  UIHelper.horizontalSpace(15),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      model.detailedPartnerModel!.contacts!
                                          .contactWebsiteLink!,
                                      // 'shooqan.kz',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // UIHelper.verticalSpace(24),
                        // Divider(height: 1),
                        UIHelper.verticalSpace(40),
                      ],
                    ),
                  ),
                  bottomNavigationBar: _buildBottomNavbar(model, context),
                ),
        );
      },
    );
  }

  _buildBottomNavbar(PartnerDetailsProvider model, context) {
    return Container(
      padding: EdgeInsets.only(bottom: 14),
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
            bottom: 20, // temporary until decide problem with bottom bar
          ),
          child: DefaultButton(
            text: 'Передать другу',
            width: double.infinity,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SendToFriendOptionPage(
                            partnerIndex: model.detailedPartnerModel!.id,
                            partnerName: model.detailedPartnerModel!.name,
                            availableBonus:
                                model.detailedPartnerModel!.bonusesSum,
                          )));
            },
          ),
        ),
      ),
    );
  }
}
