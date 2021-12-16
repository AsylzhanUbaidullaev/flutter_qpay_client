import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/period_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transactions_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/ui/period_picker.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';

class Period extends StatelessWidget {
  final TransactionsProvider transactionsProvider;
  const Period({Key? key, required this.transactionsProvider,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<PeriodProvider>(
      model: PeriodProvider(),
      // onReady: (value) => value.init(context),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      UIHelper.verticalSpace(35),
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: model.periodsList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  model.setSelectedPeriod(
                                      index, transactionsProvider);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      model.periodsList[index],
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    model.selectedPeriod == index
                                        ? SvgPicture.asset(
                                            AppSvgImages.ic_check)
                                        : SvgPicture.asset(
                                            AppSvgImages.ic_empty_check),
                                  ],
                                ),
                              ),
                              UIHelper.verticalSpace(33),
                            ],
                          );
                        },
                      ),
                      GestureDetector(
                        onTap: ()  {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PeriodPicker(
                                transactionsProvider: transactionsProvider,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'За период',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackColor,
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AppSvgImages.ic_arrow_right,
                                  ),
                                  UIHelper.horizontalSpace(6),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      UIHelper.verticalSpace(44),
                      DefaultButton(
                        width: double.infinity,
                        text: 'Применить',
                        press: () async{
                          await model.getTransactionsByDate(
                              context, transactionsProvider);
                        },
                      ),
                      UIHelper.verticalSpace(40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
    
    
    // BaseProvider<PeriodProvider>(
    //   model: PeriodProvider(),
    //   builder: (context, model, child) {
    //     return Container(
    //       color: Color(0xFF757575),
    //       child: Container(
    //         padding: EdgeInsets.only(top: 15),
    //         decoration: BoxDecoration(
    //           color: AppColors.whiteColor,
    //           borderRadius: BorderRadius.only(
    //             topLeft: Radius.circular(25),
    //             topRight: Radius.circular(25),
    //           ),
    //         ),
    //         child: SafeArea(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Center(
    //                 child: SvgPicture.asset(AppSvgImages.ic_swipe),
    //               ),
    //               UIHelper.verticalSpace(30),
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 25, right: 25),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       'Транзакций',
    //                       style: TextStyle(
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.w500,
    //                         color: AppColors.blackColor,
    //                       ),
    //                     ),
    //                     UIHelper.verticalSpace(35),
    //                     ListView.builder(
    //                       padding: EdgeInsets.zero,
    //                       shrinkWrap: true,
    //                       itemCount: model.periodsList.length,
    //                       itemBuilder: (context, index) {
    //                         return Column(
    //                           children: [
    //                             InkWell(
    //                               onTap: () {
    //                                 model.setSelectedPeriod(index);
    //                                 changeDate(transactionsState, model);
    //                               },
    //                               child: Row(
    //                                 mainAxisAlignment:
    //                                     MainAxisAlignment.spaceBetween,
    //                                 children: [
    //                                   Text(
    //                                     model.periodsList[index],
    //                                     style: TextStyle(
    //                                       fontSize: 16,
    //                                       fontWeight: FontWeight.w400,
    //                                       color: AppColors.blackColor,
    //                                     ),
    //                                   ),
    //                                   model.selectedPeriod == index
    //                                       ? SvgPicture.asset(
    //                                           AppSvgImages.ic_check)
    //                                       : SvgPicture.asset(
    //                                           AppSvgImages.ic_empty_check),
    //                                 ],
    //                               ),
    //                             ),
    //                             UIHelper.verticalSpace(33),
    //                           ],
    //                         );
    //                       },
    //                     ),
    //                     InkWell(
    //                       onTap: () async {
    //                         Navigator.push(
    //                           context,
    //                           MaterialPageRoute(
    //                             builder: (context) => PeriodPicker(
    //                               transactionsState: transactionsState,
    //                             ),
    //                           ),
    //                         );
    //                       },
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                         children: [
    //                           Text(
    //                             'За период',
    //                             style: TextStyle(
    //                               fontSize: 16,
    //                               fontWeight: FontWeight.w400,
    //                               color: AppColors.blackColor,
    //                             ),
    //                           ),
    //                           Row(
    //                             children: [
    //                               SvgPicture.asset(
    //                                 AppSvgImages.ic_arrow_right,
    //                               ),
    //                               UIHelper.horizontalSpace(6),
    //                             ],
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                     UIHelper.verticalSpace(44),
    //                     DefaultButton(
    //                       width: double.infinity,
    //                       text: 'Применить',
    //                       press: () {
    //                         // transactionState.filterTransactions(context);
    //                         Navigator.pop(context);
    //                       },
    //                     ),
    //                     UIHelper.verticalSpace(30),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
