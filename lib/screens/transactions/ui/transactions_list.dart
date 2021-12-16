import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/transaction_model.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transactions_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/ui/transaction_details.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_svg/svg.dart';

class TransactionsList extends StatelessWidget {
  final TransactionsModel transactionsModel;
  final TransactionsProvider transactionsProvider;
  const TransactionsList(
      {Key? key,
      required this.transactionsModel,
      required this.transactionsProvider
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return transactionsModel.data! != [] ?
    ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: transactionsModel.data!.length,
            itemBuilder: (context, preIndex) {
              return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                transactionsModel.data![preIndex].date!,
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.grayColor,
                ),
              ),
            ),
              UIHelper.verticalSpace(10),
              ListView.separated(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                physics: BouncingScrollPhysics(),
                itemCount: transactionsModel.data![preIndex].array!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (transactionsModel.data![preIndex].array![index].id !=
                          null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransactionDetail(
                              transactionId: transactionsModel
                                  .data![preIndex].array![index].id!,
                            ),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          kWhiteBoxshadow,
                        ],
                      ),
                      child: Column(
                        children: [
                          UIHelper.verticalSpace(15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(AppSvgImages.ic_profile),
                                UIHelper.horizontalSpace(10),
                                Column(
                                  children: [
                                    Text(
                                      // 'Самат',
                                      transactionsModel.data![preIndex]
                                              .array![index].name ??
                                          "Partner",
                                      // transactionsModel.data![index].array![preIndex].name ?? "fsea",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      // '750' + ' Б',
                                      "${transactionsModel.data![preIndex].array![index].bonus} Б",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: transactionsProvider.defineColor(transactionsModel.data![preIndex].array![index].type!)
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          UIHelper.verticalSpace(15),
                          Divider(height: 1),
                          UIHelper.verticalSpace(17),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Text(
                                  transactionsModel.data![preIndex].array![index].type!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.grayColor,
                                  ),
                                ),
                                Spacer(),
                                UIHelper.horizontalSpace(8),
                                Text(
                                  transactionsModel.data![preIndex].array![index].type == "debitting"
                                    ?
                                    ""
                                    :
                                    transactionsModel.data![preIndex].array![index].type == "accrual" 
                                      ?
                                      "${transactionsModel.data![preIndex].array![index].amount} T"
                                      :
                                    transactionsModel.data![preIndex].array![index].phone!,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.grayColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          UIHelper.verticalSpace(15),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
              ),]);
            })
      : SizedBox();
  }
}
