import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/subcategories_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/data/data_methods.dart';
import 'package:flutter_qpay_client/services/partner_service.dart';

class SubcategoriesProvider extends BaseBloc {
  ScrollController partnersController = ScrollController();
  ScrollController searchController = ScrollController();
  int? cityId = 2;
  int initPartnersPage = 1;
  int searchPage = 1;
  String searchName = "";
  bool isMoreParnersLoading = false;
  bool isMoreSearchParnersLoading = false;
  bool isSearchingPartner = false;
  bool isPartnerInitLoading = true;
  //скрол контроллер буллион по скролу будет предопредилять какая след пагинация

  Result<List<SubCategoriesModel>, NetworkError>? subcategoriesData;
  PartnerService _partnerService = PartnerService();
  SubCategoriesModel? subcategoriesModel;

  List<SubCategoriesModel>? subcategories;

  init(BuildContext context, int id) async {
    setLoading(true);
    subcategoriesData = await _partnerService.getSubCategories(id);
    if(subcategoriesData != null) {
      subcategoriesData!.when(success: (response) {
      subcategories = response;
      print('Success');
      log("${subcategories}");
      }, failure: (error) {
        print("Error in get subcategories_____");
      });
    }
    setLoading(false);
  }

  setIsMoreSearchParnersLoading(bool value) {
    isMoreSearchParnersLoading = value;
    notifyListeners();
  }

  setIsPartnerInitLoading(bool value) {
    isPartnerInitLoading = value;
    notifyListeners();
  }

  incrementInitPartnersPage() {
    initPartnersPage++;
    notifyListeners();
  }

  incrementSearchPage() {
    searchPage++;
    notifyListeners();
  }

  getAwaitCity() async {
    cityId = await getCityId();
    notifyListeners();
  }

  setIsSearchingPartner(bool value) {
    isSearchingPartner = value;
    notifyListeners();
  }

  setIsMorePartnersLoading(bool value) {
    isMoreParnersLoading = value;
    notifyListeners();
  }

  setSearchName(String name) {
    searchName = name;
    notifyListeners();
  }
}