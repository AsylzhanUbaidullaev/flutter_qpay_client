import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/clients/json_api_client.dart';
import 'package:flutter_qpay_client/app/data/models/transaction_by_type_model.dart';
import 'package:flutter_qpay_client/app/data/models/transaction_detail_model.dart';
import 'package:flutter_qpay_client/app/data/models/transaction_model.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/core/network/layers/network_executer.dart';

class TransactionService {
  Future<Result<TransactionsModel, NetworkError>> getAllTransactions(
      String type, String fromDate, String toDate, int page) async {
    return NetworkExecuter.execute<TransactionsModel, TransactionsModel>(
        route:
            PlaceHolderClient.getAllTransactions(type, fromDate, toDate, page),
        responseType: TransactionsModel());
  }

  Future<Result<TransactionByTypeModel, NetworkError>>
      getTransactionsTypesCount(String type, String fromDate, String toDate) async {
    return NetworkExecuter.execute<TransactionByTypeModel,
        TransactionByTypeModel>(
      route: PlaceHolderClient.getTransactionsTypesCount(type, fromDate, toDate),
      responseType: TransactionByTypeModel(),
    );
  }

  Future<Result<TransactionDetailsModel, NetworkError>> getTransactionDetails(
      int? id) async {
    return NetworkExecuter.execute<TransactionDetailsModel,
            TransactionDetailsModel>(
        route: PlaceHolderClient.getTransactionDetails(id!),
        responseType: TransactionDetailsModel());
  }
}