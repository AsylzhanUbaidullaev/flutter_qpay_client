// import 'package:flutter/material.dart';
// import 'package:flutter_qpay_client/app/data/models/city_model.dart';
// import 'package:flutter_qpay_client/base/base_bloc.dart';
// import 'package:flutter_qpay_client/core/freezed/network_error.dart';
// import 'package:flutter_qpay_client/core/freezed/result.dart';
// import 'package:flutter_qpay_client/data/data_methods.dart';
// import 'package:flutter_qpay_client/services/home_service.dart';

// class CityAlertDialogProvider extends BaseBloc {
//   int selectedCity = 0;
//   String selectedCityName = "Алматы";

//   HomeService _homeService = HomeService();
//   Result<CityModel, NetworkError>? cityData;
//   Result<dynamic, NetworkError>? changeCityData;
//   List<Cities> cities = [];
  

//   init() async {
//     setLoading(true);
//     cityData = await _homeService.getCities();

//     if(cityData != null) {
//       cityData!.when(success: (response) {
//         cities = response.cities!;
//       }, failure: (error) {
//         print("Error during City Alert Provider");
//       });
//     }

//     setLoading(false);
//   }

//   changeCity(int index) async {
//     changeCityData = await _homeService.changeCity(cities[index].id!);

//     changeCityData!.when(success: (response) async {
//       selectedCityName = cities[index].name!;
//       await setCityData(index, selectedCityName);
//       notifyListeners();
//     }, failure: (error) {
//       print("Error during ChangeCity method in City Alert Provider");
//     });
//   }
// }