import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class TransactionsModel extends BaseNetworkModel<TransactionsModel> {
  List<DataOfTransactionModel>? data;
  Links? links;
  MetaOfTransactionModel? meta;

  TransactionsModel({this.data, this.links, this.meta});

  TransactionsModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataOfTransactionModel>[];
      json['data'].forEach((v) {
        data!.add(DataOfTransactionModel.fromJson(v));
      });
    }
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    meta = json['meta'] != null
        ? new MetaOfTransactionModel.fromJson(json['meta'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }

  @override
  TransactionsModel fromJson(Map<String, dynamic> json) {
    return TransactionsModel.fromJson(json);
  }
}

class DataOfTransactionModel {
  String? date;
  List<Array>? array;

  DataOfTransactionModel({this.date, this.array});

  DataOfTransactionModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    if (json['array'] != null) {
      array = <Array>[];
      json['array'].forEach((v) {
        array!.add(new Array.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    if (this.array != null) {
      data['array'] = this.array!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Array {
  int? id;
  String? type;
  String? avatar;
  String? name;
  String? phone;
  int? amount;
  int? bonus;
  int? bonusPercentage;
  String? bonusColor;
  String? createdUserName;
  int? commentsCount;

  Array(
      {this.id,
      this.type,
      this.avatar,
      this.name,
      this.phone,
      this.amount,
      this.bonus,
      this.bonusPercentage,
      this.bonusColor,
      this.createdUserName,
      this.commentsCount});

  Array.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    avatar = json['avatar'];
    name = json['name'];
    phone = json['phone'];
    amount = json['amount'];
    bonus = json['bonus'];
    bonusPercentage = json['bonus_percentage'];
    bonusColor = json['bonus_color'];
    createdUserName = json['created_user_name'];
    commentsCount = json['comments_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['avatar'] = this.avatar;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['amount'] = this.amount;
    data['bonus'] = this.bonus;
    data['bonus_percentage'] = this.bonusPercentage;
    data['bonus_color'] = this.bonusColor;
    data['created_user_name'] = this.createdUserName;
    data['comments_count'] = this.commentsCount;
    return data;
  }
}

class Links {
  String? first;
  String? last;
  String? prev;
  String? next;

  Links({this.first, this.last, this.prev, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['last'] = this.last;
    data['prev'] = this.prev;
    data['next'] = this.next;
    return data;
  }
}

class MetaOfTransactionModel {
  int? currentPage;
  int? from;
  int? lastPage;
  List<Links>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  MetaOfTransactionModel(
      {this.currentPage,
      this.from,
      this.lastPage,
      this.links,
      this.path,
      this.perPage,
      this.to,
      this.total});

  MetaOfTransactionModel.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class LinksOfTransationModel {
  String? url;
  String? label;
  bool? active;

  LinksOfTransationModel({this.url, this.label, this.active});

  LinksOfTransationModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['label'] = this.label;
    data['active'] = this.active;
    return data;
  }
}
