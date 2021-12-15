import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/transaction_detail_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/services/transaction_service.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';

class TransactionDetailsProvider extends BaseBloc {
  TransactionDetailsModel? transactionDetailsModel;

  init(int? id, context) async {
    setLoading(true);
    Result<TransactionDetailsModel, NetworkError> t =
        await TransactionService().getTransactionDetails(id);

    t.when(
        success: (response) {
          print("Transactions");
          transactionDetailsModel = response;
          log('${transactionDetailsModel!.detail!.bonus}');
        },
        failure: (error) {});
    setLoading(false);
    notifyListeners();
  }

  setTransactionDetailsModel(TransactionDetailsModel t) {
    transactionDetailsModel = t;
    notifyListeners();
  }

  defineColor(String type) {
    switch (type) {
      case "accrual":
        return AppColors.systemGreenColor;

      case "debiting":
        // return AppColors.blackColor;
        return AppColors.systemRedColor;

      case "sending":
        return AppColors.systemBlueColor;

      case "receiving":
        return AppColors.systemGreenColor;
    }
  }
}