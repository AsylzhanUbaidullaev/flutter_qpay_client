import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transactions_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/ui/period.dart';
import 'package:flutter_qpay_client/screens/transactions/ui/transaction_filter.dart';
import 'package:flutter_qpay_client/screens/transactions/ui/transactions_list.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_without_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_qpay_client/widgets/loading_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          child: AppBarWithoutBackButton(title: 'Транзакции'),
          decoration: kAppBarDecoration,
          height: 70,
        ),
        body: BaseProvider<TransactionsProvider>(
          model: TransactionsProvider(),
          onReady: (value) async => await value.init(),
          builder: (context, model, child) {
            return model.isLoading
                ? LoadingView()
                : SingleChildScrollView(
                    controller: model.controller,
                    child: Column(
                      children: [
                        UIHelper.verticalSpace(15),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return Wrap(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Period(
                                      transactionsProvider: model,
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            padding: EdgeInsets.symmetric(vertical: 19),
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [kWhiteBoxshadow],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AppSvgImages.ic_calendar),
                                UIHelper.horizontalSpace(15),
                                Text(
                                  // '26 мая - 26 июня'
                                  '${DateFormat('dd MMMM').format(model.fromDate)} - ${DateFormat('dd MMMM').format(model.toDate)}',
                                ),
                              ],
                            ),
                          ),
                        ),
                        UIHelper.verticalSpace(35),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return Wrap(
                                  children: [
                                    TransactionFilter(
                                      transactionsProvider: model,
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              children: [
                                Text(
                                  // 'Все транзакций',
                                  "${model.getTransactionsTypeWord(context)}",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                UIHelper.horizontalSpace(10),
                                SvgPicture.asset(
                                  AppSvgImages.ic_arrow_down,
                                  color: AppColors.primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        UIHelper.verticalSpace(10),
                        model.isLoading
                            ? Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.primaryColor,
                                ),
                              )
                            : model.allTransactionsList[0].data!.isEmpty
                                ? Card(
                                    color: AppColors.whiteColor,
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 15),
                                        child: Text(
                                          "У тебя нет транзакций",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.darkGrayColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Inter',
                                          ),
                                        )),
                                  )
                                : ListView.builder(
                                    shrinkWrap: true,
                                    physics: BouncingScrollPhysics(),
                                    itemCount: model.allTransactionsList.length,
                                    itemBuilder: (context, index) {
                                      return model.allTransactionsList.last
                                              .data!.isEmpty
                                          ? SizedBox()
                                          : TransactionsList(
                                              transactionsModel: model
                                                  .allTransactionsList[index],
                                              transactionsProvider: model,
                                            );
                                    },
                                  ),
                        model.isMoreTransactionsLoading
                            ? Container(
                                padding: EdgeInsets.only(top: 10, bottom: 12),
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              )
                            : SizedBox(),
                        UIHelper.verticalSpace(30),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}