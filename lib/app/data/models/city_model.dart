import 'package:flutter_qpay_client/core/network/interfaces/base_network_model.dart';

class CityModel extends BaseNetworkModel<CityModel> {
  List<Cities>? cities;

  CityModel({this.cities});

  CityModel.fromJson(Map<String, dynamic> json) {
    this.cities = json["cities"] == null
        ? null
        : (json["cities"] as List).map((e) => Cities.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cities != null)
      data["cities"] = this.cities!.map((e) => e.toJson()).toList();
    return data;
  }

  @override
  CityModel fromJson(Map<String, dynamic> json) {
    return CityModel.fromJson(json);
  }
}

class Cities {
  int? id;
  String? name;

  Cities({this.id, this.name});

  Cities.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    return data;
  }
}
