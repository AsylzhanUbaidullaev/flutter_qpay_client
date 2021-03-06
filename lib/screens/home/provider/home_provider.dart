// import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_qpay_client/app/data/models/city_model.dart';
import 'package:flutter_qpay_client/app/data/models/home_model.dart';
import 'package:flutter_qpay_client/app/data/models/home_partners_model.dart';
import 'package:flutter_qpay_client/app/data/models/partners_has_bonuses_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/data/data_methods.dart';
import 'package:flutter_qpay_client/services/city_service.dart';
import 'package:flutter_qpay_client/services/home_service.dart';
import 'package:flutter_qpay_client/services/send_to_friend_service.dart';

class HomeProvider extends BaseBloc {
  HomeModel? homeModel;
  List<Partners> homePartnerList = [];
  HomeService _homeService = HomeService();
  int cityId = 1;
  Result<CityModel, NetworkError>? cityData;
  List<Cities> cities = [];
  String selectedCityName = "Алматы";

  SendToFriendService _sendToFriendService = SendToFriendService();
  List<PartnersHasBonusesModel> sendToFriendPartnerList = [];
  Result<List<PartnersHasBonusesModel>, NetworkError>? partnerData;

  init(context)async{
    setLoading(true);

    cityData = await _homeService.getCities();

    if(cityData != null) {
      cityData!.when(success: (response) {
        cities = response.cities!;
      }, failure: (error) {
        print("Error during Home Provider");
      });
    }

    await getHomeInfo();
    // if(cityId == null) {
    //   setCityData(1, "Алматы");
    // } else {
      cityId = await getCityId();
    // }
    await getHomePartnersList();
    await getSendToFriendPartnersList();
    setLoading(false);
  }

  getHomeInfo() async {
    Result<HomeModel, NetworkError> h = await _homeService.getHomeInfo();
    h.when(success: (response){
      homeModel= response;
      notifyListeners();
    }, failure: (error){
      print(error);
    });
  }

  getHomePartnersList() async {
    log("City id: ${cityId}");
    Result<List<Partners>, NetworkError> hPL = await _homeService.getHomePartnerList(cityId);
    hPL.when(success: (response) {
      homePartnerList = response;
      notifyListeners();
    }, failure: (error) {
      log("$error");
    });
  }

  changeCity(int id, String cityName, context, HomeProvider model) async {
    setCityData(id, cityName);
    selectedCityName = cityName;
    Navigator.of(context).pop(model.init(context));
    notifyListeners();

    // changeCityData = await _homeService.changeCity(cities[index].id!);

    // changeCityData!.when(success: (response) async {
    //   selectedCityName = cities[index].name!;
    //   await setCityData(index, selectedCityName);
    //   notifyListeners();
    // }, failure: (error) {
    //   print("Error during ChangeCity method in City Alert Provider");
    // });
  }

  getSendToFriendPartnersList() async {
    partnerData = await _sendToFriendService.getSendToFriendPartnerList(cityId);
    partnerData!.when(success: (response) {
      sendToFriendPartnerList = response;
      notifyListeners();
    }, failure: (error) {
      log("Error: $error");
    });
  }
}