import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/transaction_by_type_model.dart';
import 'package:flutter_qpay_client/app/data/models/transaction_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/services/transaction_service.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:intl/intl.dart';

class TransactionsProvider extends BaseBloc {
  ScrollController controller = ScrollController();
  late TransactionsModel transactionsModel;

  DateTime fromDate = DateTime.now().subtract(Duration(days: 180));
  DateTime toDate = DateTime.now();

  TransactionService _transactionService = TransactionService();
  List<TransactionsModel> allTransactionsList = [];
  bool isMoreTransactionsLoading = false;
  int page = 0;
  int selectedType = 0;
  String typeOfTransactions = "";
  List typesList = [];

  init() async {
    setLoading(true);

    controller.addListener(() async {
      if (controller.position.pixels >= controller.position.maxScrollExtent) {
        if (allTransactionsList.last.links!.next != null) {
          print("Tubine zhettik");
          await moreTransactionsLoad();
        }
      }
    });

    await getTransactions();

    setLoading(false);
  }

  moreTransactionsLoad() async {
    setIsMoreTransactionsLoading(true);

    pageIncr();
    Result<TransactionsModel, NetworkError> t =
        await _transactionService.getAllTransactions(
            typeOfTransactions,
            DateFormat('yyyy-MM-dd').format(fromDate),
            DateFormat('yyyy-MM-dd').format(toDate),
            page);

    t.when(
        success: (response) {
          allTransactionsList.add(response);
          notifyListeners();
        },
        failure: (error) {});

    setIsMoreTransactionsLoading(false);
  }

  getTransactions() async {
    setLoading(true);
    setDataForFilteredTransactions();
    Result<TransactionsModel, NetworkError> t =
        await _transactionService.getAllTransactions(
            typeOfTransactions,
            DateFormat('yyyy-MM-dd').format(fromDate),
            DateFormat('yyyy-MM-dd').format(toDate),
            page);

    t.when(
        success: (response) {
          allTransactionsList.add(response);
          notifyListeners();
        },
        failure: (error) {});

    Result<TransactionByTypeModel, NetworkError> listData = 
      await _transactionService.getTransactionsTypesCount(
        typeOfTransactions,
        DateFormat('yyyy-MM-dd').format(fromDate),
        DateFormat('yyyy-MM-dd').format(toDate),
    );

    if (listData != null) {
      listData.when(
        success: (response) {
          typesList = [
            {
              'name': 'Все транзакции',
              'count': response.transactionsCount,
            },
            {
              'name': 'Только начисления',
              'count': response.accrualTransactionsCount,
            },
            {
              'name': 'Только списания',
              'count': response.debitingTransactionsCount,
            },
          ];
          notifyListeners();
        },
        failure: (error) {
          log("Error in getTransactions method. Error: $error");
        },
      );
    }
    setLoading(false);
  }

  getTransactionsTypeWord(BuildContext context) {
    if (typeOfTransactions == "") {
      return "${"Все транзакций"} (${typesList[0]["count"]})";
    } else if (typeOfTransactions == "accrual") {
      return "${"Только наичсления"} (${typesList[1]["count"]})";
    } else if (typeOfTransactions == "debiting") {
      return "${"Только списания"} (${typesList[2]["count"]})";
    }
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

  setSelectedType(int index) {
    selectedType = index;
    if (index == 1) {
      setTypeOfTransactions("accrual");
    } else if (index == 2) {
      setTypeOfTransactions("debiting");
    } else {
      setTypeOfTransactions("");
    }
    notifyListeners();
  }

  setTypeOfTransactions(String type) {
    typeOfTransactions = type;
    notifyListeners();
  }

  setDataForFilteredTransactions() {
    page = 1;
    allTransactionsList.clear();
    notifyListeners();
  }

  pageIncr() {
    page++;
    notifyListeners();
  }

  setIsMoreTransactionsLoading(bool value) {
    isMoreTransactionsLoading = value;
    notifyListeners();
  }

  setToDate(DateTime time) {
    toDate = time;
    notifyListeners();
  }

  setFromDate(DateTime time) {
    fromDate = time;
    notifyListeners();
  }
}