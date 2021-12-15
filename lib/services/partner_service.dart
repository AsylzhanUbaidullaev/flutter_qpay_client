import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/clients/json_api_client.dart';
import 'package:flutter_qpay_client/app/data/models/categories_model.dart';
import 'package:flutter_qpay_client/app/data/models/detailed_partner_model.dart';
import 'package:flutter_qpay_client/app/data/models/partner_model.dart';
import 'package:flutter_qpay_client/app/data/models/partner_with_bonus_model.dart';
import 'package:flutter_qpay_client/app/data/models/partners_has_bonuses_model.dart';
import 'package:flutter_qpay_client/app/data/models/subcategories_model.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/core/network/layers/network_executer.dart';

class PartnerService {
  Future<Result<List<CategoriesModel>, NetworkError>> getCategories() async {
    return NetworkExecuter.execute<CategoriesModel, List<CategoriesModel>>(
      route: PlaceHolderClient.getCategories(),
      responseType: CategoriesModel(),
    );
  }

  Future<Result<List<SubCategoriesModel>, NetworkError>> getSubCategories(
      int id) async {
    log("Sub work");
    return NetworkExecuter.execute<SubCategoriesModel,
        List<SubCategoriesModel>>(
      route: PlaceHolderClient.getSubCategories(id),
      responseType: SubCategoriesModel(),
    );
  }

  Future<Result<List<PartnerWithBonusModel>, NetworkError>>
      getPartnersHasBonuses(int cityId) async {
    log("PartnersHasBonuses work");
    return NetworkExecuter.execute<PartnerWithBonusModel,
        List<PartnerWithBonusModel>>(
      route: PlaceHolderClient.getPartnersWithBonuses(cityId),
      responseType: PartnerWithBonusModel(),
    );
  }

  Future<Result<DetailedPartnerModel, NetworkError>> getDetailedPartnerInfo(
      int id, int cityId) async {
        log("Success");
    return NetworkExecuter.execute(
        route: PlaceHolderClient.getDetailedPartnerInfo(id, cityId),
        responseType: DetailedPartnerModel());
  }

  Future<Result<PartnerModel, NetworkError>> searchPartner(
      String name, int cityId) async {
    return NetworkExecuter.execute<PartnerModel, PartnerModel>(
        route: PlaceHolderClient.searchPartner(name, cityId),
        responseType: PartnerModel());
  }
}
