import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transactions_provider.dart';

class PeriodProvider extends BaseBloc {
  int selectedPeriod = 3;
  late List periodsList = [
        "За неделю",
        "За месяц",
        "За три месяца",
        "За полгода"
    ];

  init(context) async {
    // periodsList;
  }

  setSelectedPeriod(int index, TransactionsProvider model) {
    selectedPeriod = index;
    print("Tapped change date");
    if (selectedPeriod == 0) {
      model.setFromDate(DateTime.now().subtract(const Duration(days: 7)));
    } else if (selectedPeriod == 1) {
      model.setFromDate(DateTime.now().subtract(const Duration(days: 30)));
    } else if (selectedPeriod == 2) {
      model.setFromDate(DateTime.now().subtract(const Duration(days: 90)));
    } else if (selectedPeriod == 3) {
      model.setFromDate(DateTime.now().subtract(const Duration(days: 180)));
    }
    notifyListeners();
  }

  getTransactionsByDate(
      BuildContext context, TransactionsProvider transactionsProvider) async {
    await transactionsProvider.getTransactions();
    Navigator.pop(context);
  }
}