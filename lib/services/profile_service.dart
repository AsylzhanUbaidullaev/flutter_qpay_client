import 'package:flutter_qpay_client/app/clients/json_api_client.dart';
import 'package:flutter_qpay_client/app/data/models/profile_model.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/core/network/layers/network_executer.dart';

class ProfileService {
  Future<Result<ProfileModel, NetworkError>> getProfileInfo() async {
    return NetworkExecuter.execute(route: PlaceHolderClient.getProfileInfo(), responseType: ProfileModel());
  }

  Future<Result<dynamic, NetworkError>> logOut() async {
    return NetworkExecuter.execute(route: PlaceHolderClient.logOut());
  }

  Future<Result<dynamic, NetworkError>> changeUserData(Map<String, dynamic> data) async {
    return NetworkExecuter.execute(route: PlaceHolderClient.changeUserData(data));
  }
}