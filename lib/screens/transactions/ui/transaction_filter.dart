import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/models/transactions_filter_model.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transaction_filter_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionFilter extends StatelessWidget {
  late Future<TransactionsBytTypeModel> fTransactionsByTypeModel;

  @override
  Widget build(BuildContext context) {
    return BaseProvider<TransactionFilterProvider>(
      model: TransactionFilterProvider(),
      builder: (context, model, child) {
        return Container(
          color: Color(0xFF757575),
          child: Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Center(
                    child: SvgPicture.asset(AppSvgImages.ic_swipe),
                  ),
                  UIHelper.verticalSpace(30),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Показать',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackColor,
                          ),
                        ),
                        UIHelper.verticalSpace(30),
                        // FutureBuilder<TransactionsBytTypeModel>(
                        //     future: fTransactionsByTypeModel,
                        //     builder: (context, snapshot) {
                        //       if (snapshot.hasData) {
                        //         return 
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        model.setSelectedType(0);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                model.filterTypesList[0]['name'],
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.blackColor,
                                                ),
                                              ),
                                              Text(
                                                ' (2)',
                                                // ' (${snapshot.data!.transactionsCount})',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.grayColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          model.selectedType == 0
                                              ? SvgPicture.asset(
                                                  AppSvgImages.ic_check)
                                              : SvgPicture.asset(
                                                  AppSvgImages.ic_empty_check),
                                        ],
                                      ),
                                    ),
                                    UIHelper.verticalSpace(25),
                                    //======================================
                                    InkWell(
                                      onTap: () {
                                        model.setSelectedType(1);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                model.filterTypesList[1]['name'],
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.blackColor,
                                                ),
                                              ),
                                              Text(
                                                ' (1)',
                                                // ' (${snapshot.data!.accrualTransactionsCount})',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.grayColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          model.selectedType == 1
                                              ? SvgPicture.asset(
                                                  AppSvgImages.ic_check)
                                              : SvgPicture.asset(
                                                  AppSvgImages.ic_empty_check),
                                        ],
                                      ),
                                    ),
                                    UIHelper.verticalSpace(25),
                                    //===================================
                                    InkWell(
                                      onTap: () {
                                        model.setSelectedType(2);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                model.filterTypesList[2]['name'],
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.blackColor,
                                                ),
                                              ),
                                              Text(
                                                ' (1)',
                                                // ' (${snapshot.data!.debitingTransactionsCount})',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.grayColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          model.selectedType == 2
                                              ? SvgPicture.asset(
                                                  AppSvgImages.ic_check)
                                              : SvgPicture.asset(
                                                  AppSvgImages.ic_empty_check),
                                        ],
                                      ),
                                    ),
                                    UIHelper.verticalSpace(25),
                                  ],
                                ),
                            //   } else {
                            //     return Container(
                            //         child: Center(
                            //             child: CircularProgressIndicator(
                            //       color: AppColors.primaryColor,
                            //     )));
                            //   }
                            // }),
                        UIHelper.verticalSpace(40),
                        DefaultButton(
                          text: 'Применить',
                          width: double.infinity,
                          press: () {
                            // widget.transactionProvider
                            //     .setTransactionType(model.selectedType);
                            // widget.transactionProvider
                            //     .filterTransactions(context);
                            // print(
                            //     "TRANSACTION TYPE: ${widget.transactionProvider.type}");
                            Navigator.pop(context);
                          },
                        ),
                        UIHelper.verticalSpace(30),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}



// Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Показать',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w500,
//                             color: AppColors.blackColor,
//                           ),
//                         ),
//                         UIHelper.verticalSpace(30),
//                         // Future builder
//                         // FutureBuilder(
//                         //   future: fTransactionsByTypeModel,
//                         //   builder: (context, snapshot) {
//                         //     if (snapshot.hasData) {
//                         //       return 
//                               ListView.separated(
//                                 itemBuilder: (context, index) {
//                                   return Column(children: [
//                                     InkWell(
//                                       onTap: () {
//                                         model.setSelectedType(0);
//                                       },
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Text(
//                                                 model.filterTypesList[0]['name'],
//                                                 style: TextStyle(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w400,
//                                                   color: AppColors.blackColor,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 ' (2)',
//                                                 style: TextStyle(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.w400,
//                                                   color: AppColors.grayColor,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           model.selectedType == 0
//                                               ? SvgPicture.asset(
//                                                   AppSvgImages.ic_check)
//                                               : SvgPicture.asset(
//                                                   AppSvgImages.ic_empty_check),
//                                         ],
//                                       ),
//                                     ),
//                                     // UIHelper.verticalSpace(25),
//                                   ],);
//                                 }, 
//                                 separatorBuilder: (context, index) => UIHelper.verticalSpace(20), 
//                                 itemCount: 3
//                               ),
//                             // } else {
//                             //   return Container(
//                             //     child: Center(
//                             //       child: CircularProgressIndicator(
//                             //         color: AppColors.primaryColor,
//                             //       ),
//                             //     ),
//                             //   );
//                             // }
//                           // },
//                         // ),
//                       ],
//                     ),
//                   ),