import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/subcategories_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/data/data_methods.dart';
// import 'package:flutter_qpay_client/models/partner_list_model.dart';
import 'package:flutter_qpay_client/services/partner_service.dart';

class SubcategoriesProvider extends BaseBloc {
  ScrollController partnersController = ScrollController();
  ScrollController searchController = ScrollController();
  // Future<List<SubCategoryModel>> fSubCategoryModel;
  // List<PartnerListModel> initPartners = [];
  // List<PartnerListModel> searchPartnersList = [];
  // List<DataOfPartnerListModel> resultsOfSearch = [];
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
    // print("SUBCATEGORIES_");
    // setIsPartnerInitLoading(true);
    // await getAwaitCity();

    // partnersController.addListener(() async {
    //   print("PARNERS LISTENER");
    //   if (partnersController.position.pixels >=
    //       partnersController.position.maxScrollExtent) {
    //     //transactionList?.last?.links?.next?.isNotEmpty ?? false
    //     if (searchPartnersList.last.links?.next?.isNotEmpty ?? false) {
    //       setIsMorePartnersLoading(true);
    //       incrementInitPartnersPage();
    //       await loadMoreInitPartners(id);
    //     }
    //   }
    // });

    // searchController.addListener(() async {
    //   print("SEARCH LISTENER");
    //   if (partnersController.position.pixels >=
    //       partnersController.position.maxScrollExtent) {
    //     if (searchPartnersList.last.links?.next?.isNotEmpty ?? false) {
    //       setIsMoreSearchParnersLoading(true);
    //       incrementSearchPage();
    //       await loadMorePartnersBySearch();
    //     }
    //   }
    // });
    // // fSubCategoryModel = PartnerService().getSubCategory(id);
    // // PartnerListModel partnerListModel = await PartnersService()
    // //     .getPartnersOfSubCategory(id, cityId, initPartnersPage);

    // // initPartners.add(partnerListModel);
    // incrementInitPartnersPage();
    // setIsPartnerInitLoading(false);
    // notifyListeners();
  }

  loadMoreInitPartners(int id) async {
    print("Load more init partners");
    // PartnerListModel p = await PartnerService()
    //     .getPartnersOfSubCategory(id, cityId, initPartnersPage);
    // initPartners.add(p);
    notifyListeners();
    setIsMorePartnersLoading(false);
  }

  // loadMorePartnersBySearch() async {
  //   print("Load more partners by search");
  //   if (isSearchingPartner) {
  //     print("Go to search");
  //     setIsMorePartnersLoading(true);
  //     PartnerListModel? p =
  //         await PartnerService().getBySearch(searchName, cityId, searchPage);
  //     addToSearchList(p!);
  //     // for (DataOfPartnerListModel doplm in searchPartnersList.last.data) {
  //     //   resultsOfSearch.add(doplm);
  //     //   notifyListeners();
  //     // }
  //     setIsMoreSearchParnersLoading(false);
  //     notifyListeners();
  //   }
  // }

  // searchPartner(String value) async {
  //   toClear();
  //   setIsSearchingPartner(true);
  //   PartnerListModel? p =
  //       await PartnerService().getBySearch(value, cityId, searchPage);

  //   p!.data!.forEach((element) {
  //     if (resultsOfSearch.isEmpty && resultsOfSearch.length == 0) {
  //       print("Hello");
  //       p.data!.forEach((data) {
  //         resultsOfSearch.add(data);
  //       });
  //     } else {
  //       for (int i = 0; i < searchPartnersList.length; i++) {
  //         for (int j = 0; j < searchPartnersList[i].data!.length; j++) {
  //           if (!(searchPartnersList[i].data![j].name == element.name)) {
  //             resultsOfSearch.add(element);
  //           }
  //         }
  //       }
  //     }
  //   });

  //   searchPartnersList.add(p);

  //   notifyListeners();
  // }

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

  // addToSearchList(PartnerListModel p) {
  //   searchPartnersList.add(p);
  //   notifyListeners();
  // }

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

  // toClear() {
  //   searchPage = 1;
  //   searchPartnersList.clear();
  //   resultsOfSearch.clear();
  //   setIsSearchingPartner(false);
  //   notifyListeners();
  // }
}