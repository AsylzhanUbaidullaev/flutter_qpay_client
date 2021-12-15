import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class TransactionByTypeModel extends BaseNetworkModel<TransactionByTypeModel>{
  int? transactionsCount;
  int? accrualTransactionsCount;
  int? debitingTransactionsCount;

  TransactionByTypeModel(
      {this.transactionsCount,
      this.accrualTransactionsCount,
      this.debitingTransactionsCount});

  TransactionByTypeModel.fromJson(Map<String, dynamic> json) {
    transactionsCount = json['transactions_count'];
    accrualTransactionsCount = json['accrual_transactions_count'];
    debitingTransactionsCount = json['debiting_transactions_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['transactions_count'] = this.transactionsCount;
    data['accrual_transactions_count'] = this.accrualTransactionsCount;
    data['debiting_transactions_count'] = this.debitingTransactionsCount;
    return data;
  }

  @override
  TransactionByTypeModel fromJson(Map<String, dynamic> json) {
    return TransactionByTypeModel.fromJson(json);
  }
}
