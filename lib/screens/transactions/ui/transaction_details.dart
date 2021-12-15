import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/widgets/loading_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transaction_details_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_with_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';

class TransactionDetail extends StatelessWidget {
  final int transactionId;
  const TransactionDetail({
    Key? key,
    required this.transactionId,
  }) : super(key: key);

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
        onReady: (value) async => await value.init(transactionId, context),
        builder: (context, model, child) {
          return model.isLoading ? LoadingView() :
          Column(
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
                        // 'Начисление бонусов',
                        model.transactionDetailsModel!.detail!.type!,
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
                        // "${model.transactionDetailsModel!.bonus!} Б",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: model.defineColor(model.transactionDetailsModel!.detail!.type!)
                          // AppColors.systemGreenColor,
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
                              // model.transactionDetailsModel!.name ?? 'Name',
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
