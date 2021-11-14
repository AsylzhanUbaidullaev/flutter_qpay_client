import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/models/partner_model.dart';
import 'package:flutter_qpay_client/screens/home/ui/send_to_friend_option.dart';
import 'package:flutter_qpay_client/screens/partners/provider/partner_details_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_with_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartnerDetailsPage extends StatelessWidget {
  const PartnerDetailsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<PartnerDetailsProvider>(
      model: PartnerDetailsProvider(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: CustomAppBar(
            height: getProportionateScreenHeight(110),
            child: AppBarChildWithBackButton(title: 'Детали партнера'),
            decoration: kAppBarDecoration,
          ),
          body: 
          // FutureBuilder<PartnerModel>(
          //     // future: model.fPartnerModel,
          //     builder: (context, snapshot) {
          //       if (snapshot.hasData) {
          //         return 
                  Scaffold(
                    body: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UIHelper.verticalSpace(30),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              children: [
                                SvgPicture.asset(AppSvgImages.ic_profile_pic),
                                UIHelper.horizontalSpace(20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // snapshot.data.name,
                                      'Shooqan',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    UIHelper.verticalSpace(10),
                                    Text(
                                      // snapshot.data.phone,
                                      '+7 747 633 8071',
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
                                      // snapshot.data.bonusesSum + " Б",
                                      '750 Б',
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
                                      // snapshot.data.bonusPercentage.toString() +
                                      //     " %",
                                      '5%',
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
                                // snapshot.data.bonusActivationPeriod == null
                                //     ? SizedBox()
                                //     : 
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'bonus_activate_dat',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: AppColors.darkGrayColor,
                                            ),
                                          ),
                                          UIHelper.verticalSpace(10),
                                          Text(
                                            '5 Июля 2021',
                                            // snapshot.data.bonusActivationPeriod
                                            //     .toString(),
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: AppColors.blackColor,
                                            ),
                                          ),
                                          UIHelper.verticalSpace(20),
                                        ],
                                      ),
                                // snapshot.data.bonusBurnoutPeriod == null
                                //     ? SizedBox()
                                //     : 
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'bonus_burnout_period',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: AppColors.darkGrayColor,
                                            ),
                                          ),
                                          UIHelper.verticalSpace(10),
                                          Text(
                                            // snapshot.data.bonusBurnoutPeriod
                                            //     .toString(),
                                            '15 Июля 2021',
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
                          // snapshot.data.description == null
                          //     ? Container()
                          //     : 
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        'Shooqan Suits – это магазин уникальных и качестваенных костьюмов',
                                        // snapshot.data.description,
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
                                // snapshot.data.categories.length,
                                3,
                                (index) => Container(
                                  padding: EdgeInsets.all(10),
                                  margin:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xffF4F4F4),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    // model.categories[index],
                                    // snapshot.data.categories[index].name,
                                    'Костюмы',
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
                                  'schedules',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.darkGrayColor,
                                  ),
                                ),
                                UIHelper.verticalSpace(2),
                                UIHelper.verticalSpace(10),
                                _getWorkTimeContainer(
                                  // snapshot.data.schedules
                                  ),
                                UIHelper.verticalSpace(10),
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
                                // snapshot.data.contacts.contactAddress == null
                                //     ? SizedBox()
                                //     : 
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
                                                'Муканова 345',
                                                // snapshot.data.contacts
                                                //     .contactAddress,
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
                                                // snapshot
                                                //     .data.contacts.contactPhone,
                                                '+7 747 633 8071',
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
                                            onTap: () {

                                            }, 
                                            // launch(snapshot.data
                                            //     .contacts.contactWebsiteLink),
                                            child: Text(
                                              // snapshot.data.contacts
                                              //     .contactWebsiteLink,
                                              'shooqan.kz',
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
                    bottomNavigationBar: _buildBottomNavbar(
                      // snapshot.data,
                      context
                      ),
                    
                  ),
              //   } else {
              //     return Container(
              //       width: double.maxFinite,
              //       height: 200,
              //       child: Center(
              //         child: CircularProgressIndicator(
              //           color: AppColors.primaryColor,
              //         ),
              //       ),
              //     );
              //   }
              // }),
        );
      },
    );
  }

  _buildBottomNavbar(
    // PartnerModel partnerModel
    context
    ) {
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
                            // partnerModel: partnerModel,
                          )));
            },
          ),
        ),
      ),
    );
  }
}


Widget _getWorkTimeContainer(
  // Schedules list
  ) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // for (Schedules_custom l in list.schedules_custom)
      //   l.week == "monday"
      //       ? _getDays("day1".tr(), l.fromTime, l.toTime)
      //       : l.week == "tuesday"
      //           ? _getDays("day2".tr(), l.fromTime, l.toTime)
      //           : l.week == "wednesday"
      //               ? _getDays("day3".tr(), l.fromTime, l.toTime)
      //               : l.week == "thursday"
      //                   ? _getDays("day4".tr(), l.fromTime, l.toTime)
      //                   : l.week == "friday"
      //                       ? _getDays("day5".tr(), l.fromTime, l.toTime)
      //                       : l.week == "saturday"
      //                           ? _getDays("day6".tr(), l.fromTime, l.toTime)
      //                           : l.week == "sunday"
      //                               ? _getDays(
      //                                   "day7".tr(), l.fromTime, l.toTime)
      //                               : Container()
    ],
  );
}

Widget _getDays(String day, String startTime, String endTime) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "$day",
        style: TextStyle(
          fontSize: 16,
          color: AppColors.blackColor,
        ),
      ),
      SizedBox(
        height: 3,
      ),
      Text(
        '$startTime - $endTime',
        style: TextStyle(
          fontSize: 16,
          color: AppColors.blackColor,
        ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
