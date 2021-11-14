import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';

class PeriodProvider extends BaseBloc {
  List periodsList = [
    'За неделю',
    'За месяц',
    'За 3 месяца',
    'За полгода',
  ];

  int selectedPeriod = 0;

  setSelectedPeriod(int index) {
    selectedPeriod = index;
    notifyListeners();
  }
}