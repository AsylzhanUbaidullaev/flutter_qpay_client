import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transaction_details_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_with_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: getProportionateScreenHeight(110),
        child: AppBarChildWithBackButton(title: 'Детали транзакций'),
        decoration: kAppBarDecoration,
      ),
      body: BaseProvider<TransactionDetailsProvider>(
        model: TransactionDetailsProvider(),
        builder: (context, model, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [kWhiteBoxshadow],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        // type
                        'Начисление бонусов',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.grayColor,
                        ),
                      ),
                    ),
                    UIHelper.verticalSpace(15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        '+750 Б',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: AppColors.systemGreenColor,
                          // model.defineColor(snapshot.data.detail.type),
                        ),
                      ),
                    ),
                    UIHelper.verticalSpace(15),
                    Divider(height: 1),
                    UIHelper.verticalSpace(15),
                    // if statement by type

                    // partner container
                    UIHelper.verticalSpace(20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Партнер',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.grayColor,
                        ),
                      ),
                    ),
                    UIHelper.verticalSpace(10),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => PartnerDetailsScreen(
                        //             idPartner: snapshot.data.partner.id),
                        //       ),
                        //     );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [kWhiteBoxshadow],
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppSvgImages.ic_profile),
                            // CircleAvatar(
                            //       backgroundImage: NetworkImage(
                            //           "${snapshot.data.partner.image}"),
                            //     ),
                            UIHelper.horizontalSpace(10),
                            Text(
                              'Shooqan',
                              // '${snapshot.data.partner.name}',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
