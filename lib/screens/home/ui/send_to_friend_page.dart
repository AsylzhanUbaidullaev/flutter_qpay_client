import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/home/provider/send_to_friend_provider.dart';
import 'package:flutter_qpay_client/screens/home/ui/send_to_friend_option.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendToFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BaseProvider<SendToFriendProvider>(
        model: SendToFriendProvider(),
        builder: (context, model, child) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(15),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Выберите партнера',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
                UIHelper.verticalSpace(15),
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SendToFriendOptionPage()));
                        },
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
                              CircleAvatar(
                                child:
                                    SvgPicture.asset(AppSvgImages.ic_profile),
                              ),
                              UIHelper.horizontalSpace(10),
                              Text(
                                'Shooqan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '750 Б',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.systemGreenColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        UIHelper.verticalSpace(10),
                    itemCount: 5)
              ],
            ),
          );
        },
      ),
    );
  }

  _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
        getProportionateScreenHeight(70),
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          boxShadow: [
            kWhiteBoxshadow,
          ],
        ),
        child: AppBar(
          backgroundColor: AppColors.whiteColor,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          toolbarHeight: getProportionateScreenHeight(70),
          centerTitle: true,
          title: Text(
            'Передать другу',
            style: kLargeTitleTextStyle,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: AppColors.primaryColor,
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  'Отменить',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                ),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
