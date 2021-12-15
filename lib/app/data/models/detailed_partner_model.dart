import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class DetailedPartnerModel extends BaseNetworkModel<DetailedPartnerModel>{
  int? id;
  String? avatar;
  String? name;
  String? phone;
  String? bonusesSum;
  int? bonusPercentage;
  int? bonusBurnoutPeriod; // null
  int? bonusActivationPeriod; // null
  String? description;
  List<Categories>? categories;
  Schedules? schedules;
  Contacts? contacts;

  DetailedPartnerModel(
      {this.id,
      this.avatar,
      this.name,
      this.phone,
      this.bonusesSum,
      this.bonusPercentage,
      this.bonusBurnoutPeriod,
      this.bonusActivationPeriod,
      this.description,
      this.categories,
      this.schedules,
      this.contacts});

  DetailedPartnerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    name = json['name'];
    phone = json['phone'];
    bonusesSum = json['bonuses_sum'];
    bonusPercentage = json['bonus_percentage'];
    bonusBurnoutPeriod = json['bonus_burnout_period'];
    bonusActivationPeriod = json['bonus_activation_period'];
    description = json['description'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    schedules = json['schedules'] != null
        ? new Schedules.fromJson(json['schedules'])
        : null;
    contacts = json['contacts'] != null
        ? new Contacts.fromJson(json['contacts'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['avatar'] = this.avatar;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['bonuses_sum'] = this.bonusesSum;
    data['bonus_percentage'] = this.bonusPercentage;
    data['bonus_burnout_period'] = this.bonusBurnoutPeriod;
    data['bonus_activation_period'] = this.bonusActivationPeriod;
    data['description'] = this.description;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.schedules != null) {
      data['schedules'] = this.schedules!.toJson();
    }
    if (this.contacts != null) {
      data['contacts'] = this.contacts!.toJson();
    }
    return data;
  }

  @override
  DetailedPartnerModel fromJson(Map<String, dynamic> json) {
    return DetailedPartnerModel.fromJson(json);
  }
}

class Categories {
  int? id;
  String? name;

  Categories({this.id, this.name});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Schedules {
  int? daysCount;
  List<Schedule>? schedules;

  Schedules({this.daysCount, this.schedules});

  Schedules.fromJson(Map<String, dynamic> json) {
    daysCount = json['days_count'];
    if (json['schedules'] != null) {
      schedules = <Schedule>[];
      json['schedules'].forEach((v) {
        schedules!.add(new Schedule.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['days_count'] = this.daysCount;
    if (this.schedules != null) {
      data['schedules'] = this.schedules!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Schedule {
  String? week;
  String? fromTime;
  String? toTime;

  Schedule({this.week, this.fromTime, this.toTime});

  Schedule.fromJson(Map<String, dynamic> json) {
    week = json['week'];
    fromTime = json['from_time'];
    toTime = json['to_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['week'] = this.week;
    data['from_time'] = this.fromTime;
    data['to_time'] = this.toTime;
    return data;
  }
}

class Contacts {
  String? contactAddress;
  String? contactPhone;
  String? contactWebsiteLink;

  Contacts({this.contactAddress, this.contactPhone, this.contactWebsiteLink});

  Contacts.fromJson(Map<String, dynamic> json) {
    contactAddress = json['contact_address'];
    contactPhone = json['contact_phone'];
    contactWebsiteLink = json['contact_website_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contact_address'] = this.contactAddress;
    data['contact_phone'] = this.contactPhone;
    data['contact_website_link'] = this.contactWebsiteLink;
    return data;
  }
}
