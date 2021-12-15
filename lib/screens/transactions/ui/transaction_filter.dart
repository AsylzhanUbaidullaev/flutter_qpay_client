import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
// import 'package:flutter_qpay_client/models/transactions_filter_model.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transaction_filter_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transactions_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionFilter extends StatelessWidget {
  final TransactionsProvider transactionsProvider;

  const TransactionFilter({Key? key, required this.transactionsProvider}) : super(key: key);

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
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: transactionsProvider.typesList.length,
                          itemBuilder: (context, index) {
                            return
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        model.setSelectedType(index);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                transactionsProvider.typesList[index]['name'],
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.blackColor,
                                                ),
                                              ),
                                              Text(
                                                ' (${transactionsProvider.typesList[index]['count']})',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.grayColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          model.selectedType == index
                                              ? SvgPicture.asset(
                                                  AppSvgImages.ic_check)
                                              : SvgPicture.asset(
                                                  AppSvgImages.ic_empty_check),
                                        ],
                                      ),
                                    ),
                                    UIHelper.verticalSpace(25),
                                  ],
                                );
                          }),
                          
                        UIHelper.verticalSpace(40),
                        DefaultButton(
                          text: 'Применить',
                          width: double.infinity,
                          press: () async {
                            await model.apply(context, transactionsProvider);
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