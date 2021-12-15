// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_qpay_client/data/data_keys.dart';
// import 'package:flutter_qpay_client/data/data_methods.dart';
// import 'package:flutter_qpay_client/models/city_model.dart';
// import 'package:http/http.dart' as http;

// class CityService {

//   Future<List<CityModel>?> getCities() async {
//     final url = Uri.parse("$base_url/api/common/cities");

//     final header = await getAuthedHeader();
//     http.Response response = await http.get(url, headers: header);

//     if (response.statusCode == 200) {
//       List<CityModel> cities = (json.decode(response.body)["cities"] as List)
//           .map((data) => CityModel.fromJson(data))
//           .toList();
//       return cities;
//     } else {
//       print(response.statusCode);
//       print(json.decode(response.body));
//       return [];
//     }
//   }

// }