import 'package:flutter_qpay_client/app/clients/json_api_client.dart';
import 'package:flutter_qpay_client/app/data/models/city_model.dart';
import 'package:flutter_qpay_client/app/data/models/home_model.dart';
import 'package:flutter_qpay_client/app/data/models/home_partners_model.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/core/network/layers/network_executer.dart';
import 'package:http/retry.dart';

class HomeService{

  Future<Result<HomeModel,NetworkError>> getHomeInfo() async{
    return NetworkExecuter.execute(route: PlaceHolderClient.getHomeInfo(), responseType: HomeModel());
  }

  Future<Result<List<Partners>, NetworkError>> getHomePartnerList(int cityId) async {
    return NetworkExecuter.execute(
      route: PlaceHolderClient.getHomePartnerList(cityId), responseType: Partners()
      );
  }

  Future<Result<CityModel, NetworkError>> getCities() async {
    return NetworkExecuter.execute(route: PlaceHolderClient.getCities(), responseType: CityModel());
  }
  // ??
  // Future<Result<dynamic, NetworkError>> changeCity(int cityID) async {
  //   return NetworkExecuter.execute(route: PlaceHolderClient.changeCity(cityID));
  // }
}