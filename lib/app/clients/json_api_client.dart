
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/main/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_qpay_client/core/network/interfaces/base_client_generator.dart';
part 'json_api_client.freezed.dart';


@freezed
class PlaceHolderClient extends BaseClientGenerator with _$PlaceHolderClient {
  static final UserData _userData = UserData();
  // Routes
  const PlaceHolderClient._() : super();
  const factory PlaceHolderClient.login(String phoneNumber) = _Login;
  const factory PlaceHolderClient.postSmsCode(String phoneNumber, String verificationCode) = _PostSmsCode;
  const factory PlaceHolderClient.preFilling(String clientName) = _PreFilling;

  const factory PlaceHolderClient.getHomeInfo() = _GetHomeInfo;
  const factory PlaceHolderClient.getHomePartnerList(int cityId) = _GetHomePartnerList;
  const factory PlaceHolderClient.getCities() = _GetCities;
  const factory PlaceHolderClient.changeCity(int cityID) = _ChageCity;

  const factory PlaceHolderClient.getSendFriendPartnerList(int cityId) = _GetSendFriendPartnerList;
  const factory PlaceHolderClient.sendBonusToFriend(int partnerId, String phoneNumber, int bonus) = _SendBonusToFriend;

  const factory PlaceHolderClient.getProfileInfo() = _GetProfileInfo;
  const factory PlaceHolderClient.logOut() = _LogOut;
  const factory PlaceHolderClient.changeUserData(Map<String, dynamic> data) = _ChangeUserData;

  const factory PlaceHolderClient.getAllTransactions(String type, String fromDate, String toDate, int page) = _GetAllTransactions;
  const factory PlaceHolderClient.getTransactionsTypesCount(
      String type, String fromDate, String toDate) = _GetTransactionsTypesCount;
  const factory PlaceHolderClient.getTransactionDetails(int id) = _GetTransactionDetail;

  const factory PlaceHolderClient.getCategories() = _GetCategories;
  const factory PlaceHolderClient.getSubCategories(int id) = _GetSubCategories;
  const factory PlaceHolderClient.getPartnersInSubCategories(int id, int cityId) = _GetPartnersInSubCategories;
  const factory PlaceHolderClient.getPartnersWithBonuses(int cityId) = _GetPartnersWithBonuses;
  const factory PlaceHolderClient.getDetailedPartnerInfo(int id, int cityId) = _GetDetailedPartnerInfo;
  const factory PlaceHolderClient.searchPartner(String name, int cityId) = _SearchPartner;

  @override
  String get baseURL => "https://qpay.7food.kz/";

  @override
  Future<Map<String, dynamic>> get header async {
    return {
      "accept": "application/json",
      // "content_language": await _userData.getLocale(),
      "authorization": "Bearer " + await _userData.getToken(),
    };
  }

  @override
  String get path {
    return this.when<String>(
      // auth
     login: (String phoneNumber) => 'api/auth/login-or-register',
     postSmsCode: (String phoneNumber, String verificationCode) =>
          'api/auth/login-or-register/verify-code',
     preFilling: (String clientName) => 'api/client/pre-filling?name=$clientName',

      // home
     getHomeInfo: ()=> 'api/client/home/info',
     getHomePartnerList: (int cityId)=> 'api/client/home/partners?city_id=$cityId',
     getCities: () => 'api/common/cities',
     changeCity: (int cityID) => 'api/client/city/update?city_id=$cityID', // there isnt in postman

     getSendFriendPartnerList: (int cityId) => 'api/client/partners/has-bonus?city_id=$cityId',
     sendBonusToFriend: (int partnerId, String phoneNumber, int bonus) => 'api/client/partners/$partnerId/send-bonus',

     // transactions
     getAllTransactions: (String type, String fromDate, String toDate, int page) => 
          'api/client/transactions?type=$type&from_date=$fromDate&to_date=$toDate&page=$page',
     getTransactionsTypesCount: (String type, String fromDate, String toDate) => 
      'api/client/transactions/quantities?type=$type&from_date=$fromDate&to_date=$toDate',
     getTransactionDetails: (int id) => 'api/client/transactions/$id',

     // partners
     getCategories: () => 'api/client/categories',
     getSubCategories: (int id) => 'api/client/categories/$id/subcategories',
     getPartnersInSubCategories: (int id, int cityId) => 'api/client/categories/$id/partners?city_id=$cityId',
     getPartnersWithBonuses: (int cityId) => 'api/client/partners/has-bonus?city_id=$cityId',
     getDetailedPartnerInfo: (int id, int cityId) => 'api/client/partners/$id?city_id=$cityId',
     searchPartner: (String name, int cityId) => 'api/client/partners/search?name=$name&city_id=$cityId',

     // Profile
     getProfileInfo: () => 'api/client/profile/detail',
     logOut: () => 'api/auth/logout',
     changeUserData: (Map<String, dynamic> data) => 'api/client/profile/update',
    );
  }

  @override
  String get method {
    return this.maybeWhen<String>(
      orElse: () => 'GET',
      login: (String phoneNumber) => 'POST',
      postSmsCode: (String phoneNumber, String verificationCode) => 'POST',
      preFilling: (String clientName) => 'POST',
      logOut: () => 'POST',
      changeUserData: (Map<String, dynamic> data) => 'POST',
      changeCity: (int cityID) => 'POST',
      sendBonusToFriend: (int partnerId, String phoneNumber, int bonus) => 'POST',
    );
  }

  @override
  dynamic get body {
    return this.maybeWhen(
      orElse: () {
        return null;
      },
      login: (String phoneNumber) {
        return {
          "phone": phoneNumber,
          "roles": ["client", "employee"]
        };
      },
      postSmsCode: (String phoneNumber, String verificationCode) {
        return {
          "phone": phoneNumber,
          "verification_code": verificationCode,
          "role": "client"
        };
      },
      sendBonusToFriend: (int partnerId, String phoneNumber, int bonus) {
        return {
          "phone" : "+7 $phoneNumber",
	        "bonus" : bonus
        };
      },
      // changeUserData: (Map<String, dynamic> data) {
      //   return data;
      // },
      changeUserData: (Map<String, dynamic> data) {
        return FormData.fromMap(data);
      },
    
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return this.maybeWhen(
      orElse: () {
        return null;
      },
     
    );
  }
}
