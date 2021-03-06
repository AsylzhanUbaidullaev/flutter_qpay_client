import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/categories_model.dart';
import 'package:flutter_qpay_client/app/data/models/partner_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/services/partner_service.dart';

class PartnersProvider extends BaseBloc {
  int cityId = 2;
  TextEditingController searchController = TextEditingController();
  ScrollController searchScrollCtrl = ScrollController();
  Result<List<CategoriesModel>, NetworkError>? categoriesData;
  Result<PartnerModel, NetworkError>? partnerData;
  PartnerService _partnerService = PartnerService();
  CategoriesModel? categoriesModel;
  FocusNode focus = FocusNode();

  List<CategoriesModel> categories = [];
  List<PartnerModel> searchPaginationList = [];
  List<PartnerDetail> searchPartnersList = [];
  bool isPartnerUpdating = false;
  bool isMorePartnersLoading = false;
  int searchingPage = 1;
  bool isSearching = false;


  init(context) async {
    setLoading(true);

    categoriesData = await _partnerService.getCategories();
    if(categoriesData != null) {
      categoriesData!.when(success: (response) {
        categories = response;
        print(categories);
      }, failure: (error) {
        log("Error in init");
      });
    }

    searchScrollCtrl.addListener(() async {
      if (searchScrollCtrl.position.pixels >=
          searchScrollCtrl.position.maxScrollExtent) {
        if (searchPaginationList.last.links!.next != null) {
          setIsMorePartnersLoading(true);
          incrementSearchPage();
          await searchPartners();
          setIsMorePartnersLoading(false);
        }
      }
    });

    setLoading(false);
  }

  searchPartners() async {
    print("Partners");
    print("search word ${searchController.text}");
    setIsPartnerSearching(true);
    fullClear();
    isSearching = true;
    partnerData = await _partnerService.searchPartner(searchController.text, cityId);
    partnerData!.when(success: (response) {
      searchPaginationList.add(response);
      searchPartnersList = response.data!;
      print("$searchPaginationList");
    }, failure: (error) {
      print("Error----");
    });
    setIsPartnerSearching(false);
  }

  fullClear() {
    print("Cleared");
    searchPaginationList.clear();
    searchPartnersList.clear();
    searchingPage = 1;
    notifyListeners();
  }

  void cancelSearch() async {
    setIsPartnerSearching(true);
    focus.unfocus();
    searchController.text = "";
    isSearching = false;
    // await initClients();
    notifyListeners();
    setIsPartnerSearching(false);
  }

  setIsPartnerSearching(bool value) {
    isPartnerUpdating = value;
    notifyListeners();
  }

  setIsMorePartnersLoading(bool value) {
    isMorePartnersLoading = value;
    notifyListeners();
  }

  incrementSearchPage() {
    searchingPage++;
    notifyListeners();
  }

  String defineWordForListTitle(int length) {
    if (length == 0) {
      return '??????????????????';
    } else if (length == 1) {
      return '??????????????';
    } else if (length > 1 && length < 5) {
      return '????????????????';
    } else {
      return '??????????????????';
    }
  }
  
}