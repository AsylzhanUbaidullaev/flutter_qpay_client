import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/partner_with_bonus_model.dart';
import 'package:flutter_qpay_client/app/data/models/partners_has_bonuses_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/data/data_methods.dart';
import 'package:flutter_qpay_client/services/partner_service.dart';

class SubcategoryDetailsProvider extends BaseBloc {
  int cityId = 1; // added late
  bool isMoreInitPartners = false;
  bool isMoreSearchPartners = false;

  Result<List<PartnerWithBonusModel>, NetworkError>? partnerData;
  PartnerService _partnerService = PartnerService();
  PartnerWithBonusModel? partnerWithBonusModel;

  List<PartnerWithBonusModel> partnersHasBonuses = [];

  init(contex) async {
    setLoading(true);
    cityId = await getCityId();
    partnerData = await _partnerService.getPartnersHasBonuses(cityId);
    if(partnerData != null) {
      partnerData!.when(success: (response) {
        partnersHasBonuses = response;
        print('partnersHasBonuses List filled:');
        print(partnersHasBonuses.length);
      }, failure: (error) {
        log("Error---");
      });
    }

    setLoading(false);
  }
}