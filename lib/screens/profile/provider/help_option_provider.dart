import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/help_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';

class HelpOptionProvider extends BaseBloc {
  toggleCollapsed(List<HelpModelItem> items, int index) {
    items[index].toggleCollapsed();
    notifyListeners();
  }
}