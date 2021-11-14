import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';

class TransactionFilterProvider extends BaseBloc {
  
  List filterTypesList = [
    {
      'name': 'Все транзакции',
    },
    {
      'name': 'Только начисления',
    },
    {
      'name': 'Только списания',
    },
  ];

  int selectedType = 0;

  setSelectedType(int index) {
    selectedType = index;
    notifyListeners();
  }
}