import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transactions_provider.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class PeriodPickerProvider extends BaseBloc {
  String? selectedDate;
  String? dateCount;
  String? startDate;
  String? endDate;
  String? rangeCount;
  DateTime? pickedFromDate;
  DateTime? pickedToDate;
  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      startDate =
          DateFormat('dd MMMM', 'kk').format(args.value.startDate).toString();
      pickedFromDate = args.value.startDate;
      endDate =
          DateFormat('dd MMMM', 'kk').format(args.value.endDate).toString();
      pickedToDate = args.value.endDate;
    } else if (args.value is DateTime) {
      selectedDate = args.value.toString();
    } else if (args.value is List<DateTime>) {
      dateCount = args.value.length.toString();
    } else {
      rangeCount = args.value.length.toString();
    }
    notifyListeners();
  }

  void saveChangedDate(
      BuildContext context, TransactionsProvider transactionsProvider) {
    if (pickedFromDate != null && pickedToDate != null) {
      print("Saved Date!!!");
      transactionsProvider.setFromDate(pickedFromDate!);
      transactionsProvider.setToDate(pickedToDate!);
    }
    Navigator.pop(context);
  }
}