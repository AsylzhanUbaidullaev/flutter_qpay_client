import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/models/transaction_model.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transactions_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/ui/transaction_details.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_svg/svg.dart';

class TransactionsList extends StatelessWidget {
  // final TransactionsModel transactionsModel;
  // final TransactionsProvider transactionsProvider;
  // const TransactionsList(
  //     {Key? key,
  //     required this.transactionsModel,
  //     required this.transactionsProvider})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                '26 июня 2021',
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.grayColor,
                ),
              ),
            ),
            UIHelper.verticalSpace(10),
            ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // transaction details
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransactionDetail(
                          // id: widget.transactionModel.data[index].array[i].id,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [kWhiteBoxshadow],
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              SvgPicture.asset(AppSvgImages.ic_profile),
                              UIHelper.horizontalSpace(10),
                              Text(
                                'Shooqan',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '-750 Б',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.systemGreenColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(15),
                        Divider(
                          height: 1,
                        ),
                        UIHelper.verticalSpace(15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Списание', // Списание, Сумма, Передано
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.inactiveColor,
                                ),
                              ),
                              Text(
                                '15 000 тг', // add if statement
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.inactiveColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => UIHelper.verticalSpace(10),
              itemCount: 3,
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => UIHelper.verticalSpace(10),
      itemCount: 1,
    );
  }
}
