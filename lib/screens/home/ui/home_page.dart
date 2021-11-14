import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/models/home_model.dart';
import 'package:flutter_qpay_client/screens/home/provider/home_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<HomeProvider>(
      model: HomeProvider(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: appBar(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Future builder
                FutureBuilder<HomeModel>(
                  builder: (context, snapshot) {
                    return Column(
                      children: [
                        UIHelper.verticalSpace(25),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          padding: EdgeInsets.symmetric(
                              horizontal: 28.5, vertical: 30),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(AppSvgImages.ic_incomes),
                                  UIHelper.horizontalSpace(5),
                                  Text(
                                    'Мои бонусы',
                                    style: TextStyle(
                                      color: AppColors.grayColor,
                                    ),
                                  ),
                                  UIHelper.horizontalSpace(30),
                                  SvgPicture.asset(AppSvgImages.ic_outcomes),
                                  UIHelper.horizontalSpace(5),
                                  Text(
                                    'Сэкономлено',
                                    style: TextStyle(
                                      color: AppColors.grayColor,
                                    ),
                                  ),
                                ],
                              ),
                              UIHelper.verticalSpace(15),
                              Row(
                                children: [
                                  UIHelper.horizontalSpace(20),
                                  Text(
                                    '750 Б',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                  UIHelper.horizontalSpace(90),
                                  // Spacer(),
                                  Text(
                                    '150 ₸',
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
                        UIHelper.verticalSpace(15),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              UIHelper.verticalSpace(16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Text('Транзакции'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 16),
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              UIHelper.verticalSpace(16),
                              Divider(
                                height: 1,
                              ),
                              UIHelper.verticalSpace(16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Text('Партнеров'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 16),
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                ],

                              ),
                              UIHelper.verticalSpace(16),
                              Divider(
                                height: 1,
                              ),
                              UIHelper.verticalSpace(16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Text('Будущие начисления'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 16),
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              UIHelper.verticalSpace(16),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                // Future builder
                UIHelper.verticalSpace(15),
                FutureBuilder(
                  builder: (context, snapshot) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            'Партнеры',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ),
                        UIHelper.verticalSpace(15),
                        ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {}, //Navigator
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 25),
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    boxShadow: [kWhiteBoxshadow],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(AppSvgImages.ic_profile),
                                      UIHelper.horizontalSpace(10),
                                      Text(
                                        'Shoqan',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                      Spacer(),
                                      Text('750 Б'),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                UIHelper.verticalSpace(15),
                            itemCount: 3 //snapshot data length
                            ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
