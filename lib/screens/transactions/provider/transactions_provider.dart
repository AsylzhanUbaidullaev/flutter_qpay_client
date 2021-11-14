import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/models/transaction_model.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:intl/intl.dart';

class TransactionsProvider extends BaseBloc {

  bool isLoadingPage = false;
  ScrollController controller = ScrollController();
  bool isMoreLoading = false;
  int transactionPage = 1;
  String type = "";
  String transactionType = "transaction_type_all";
  String toDate = DateFormat("yyyy-MM-dd").format(DateTime.now());
  String fromDate = DateFormat("yyyy-MM-dd").format(DateTime(
      DateTime.now().year, DateTime.now().month - 1, DateTime.now().day));

  List<TransactionsModel> transactionList = [];

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

  setToDate(String date) {
    toDate = date;
    notifyListeners();
  }

  setFromDate(String date) {
    fromDate = date;
    notifyListeners();
  }
}