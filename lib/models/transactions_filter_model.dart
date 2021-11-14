
class TransactionsBytTypeModel {
  int? transactionsCount;
  int? accrualTransactionsCount;
  int? debitingTransactionsCount;

  TransactionsBytTypeModel(
      {this.transactionsCount,
      this.accrualTransactionsCount,
      this.debitingTransactionsCount});

  TransactionsBytTypeModel.fromJson(Map<String, dynamic> json) {
    this.transactionsCount = json["transactions_count"];
    this.accrualTransactionsCount = json["accrual_transactions_count"];
    this.debitingTransactionsCount = json["debiting_transactions_count"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["transactions_count"] = this.transactionsCount;
    data["accrual_transactions_count"] = this.accrualTransactionsCount;
    data["debiting_transactions_count"] = this.debitingTransactionsCount;
    return data;
  }

  @override
  TransactionsBytTypeModel fromJson(Map<String, dynamic> json) {
    return TransactionsBytTypeModel.fromJson(json);
  }
}
