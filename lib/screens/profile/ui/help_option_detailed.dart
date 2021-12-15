import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/help_model.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/profile/provider/help_option_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_with_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpOptionPage extends StatelessWidget {
  final String? title;
  final int? helpOptionId;
  final List<HelpModelItem>? items;
  const HelpOptionPage({ Key? key, required this.title, required this.helpOptionId, required this.items }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: getProportionateScreenHeight(110),
        child: AppBarChildWithBackButton(title: 'Общее вопросы'),
        decoration: kAppBarDecoration,
      ),
      backgroundColor: AppColors.whiteColor,
      body: BaseProvider<HelpOptionProvider>(
        model: HelpOptionProvider(),
        builder: (context, model, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  UIHelper.verticalSpace(10),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              model.toggleCollapsed(
                                items!,
                                items![index].id!,
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 21, horizontal: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      items![index].question!,
                                      // 'Что такое Q pay?',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset(AppSvgImages.ic_plus),
                                ],
                              ),
                            ),
                          ),
                          items![index].isCollapsed
                              ? Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    children: [
                                      Text(
                                        items![index].answer!,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                      UIHelper.verticalSpace(20),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => Divider(height: 1),
                    itemCount: items!.length,
                    // itemCount: 5,
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