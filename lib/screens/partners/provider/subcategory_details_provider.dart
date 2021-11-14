import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/models/partner_model.dart';

class SubcategoryDetailsProvider extends BaseBloc {
  ScrollController initController = ScrollController();
  ScrollController searchController = ScrollController();
  List<PartnerModel> initPartnersWithBonus = [];
  // List<PartnerListModel> initPartnerListModel = [];
  // List<PartnerListModel> searchList = [];
  // List<DataOfPartnerListModel> resultsOfSearch = [];
  String searchName = "";
  late int cityId; // added late
  int initPartnersPage = 1;
  int searchPartnersPage = 1;
  bool isPageLoading = true;
  bool isInitPartners = true;
  bool isSearchPartners = false;
  bool isMoreInitPartners = false;
  bool isMoreSearchPartners = false;
}