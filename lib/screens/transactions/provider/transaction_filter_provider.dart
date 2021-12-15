import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transactions_provider.dart';

class TransactionFilterProvider extends BaseBloc {

  int selectedType = 0;

  setSelectedType(int index) {
    selectedType = index;
    notifyListeners();
  }

  apply(BuildContext context, TransactionsProvider transactionsProvider) async {
    Navigator.pop(context);
    transactionsProvider.setSelectedType(selectedType);
    await transactionsProvider.getTransactions();
  }
}