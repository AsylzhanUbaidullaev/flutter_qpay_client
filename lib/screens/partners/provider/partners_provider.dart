import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/models/category_model.dart';

class PartnersProvider extends BaseBloc {
  late Future<List<CategoriesModel>> fCategoryModel;
  // List<PartnerListModel> searchPartnersList = [];
  // List<DataOfPartnerListModel> resultsOfSearch = [];
  int cityId = 2;
  int searchPage = 1;
  String searchName = "";
  bool isMoreParnersLoading = false;
  bool isMoreSearchParnersLoading = false;
  bool isSearchingPartner = false;
  ScrollController partnersController = ScrollController();
  ScrollController searchController = ScrollController();
}