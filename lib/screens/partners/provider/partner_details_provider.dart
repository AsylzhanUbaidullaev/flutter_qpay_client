import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/detailed_partner_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/data/data_methods.dart';
import 'package:flutter_qpay_client/services/partner_service.dart';

class PartnerDetailsProvider extends BaseBloc {
  int cityId = 1;

  DetailedPartnerModel? detailedPartnerModel;
  PartnerService _partnerService = PartnerService();
  Result<DetailedPartnerModel, NetworkError>? partnerData;

  init(context, int? id) async {
    setLoading(true);
    cityId = await getCityId();
    partnerData = await _partnerService.getDetailedPartnerInfo(id!, cityId);
    if(partnerData != null) {
      partnerData!.when(success: (response) {
        detailedPartnerModel = response;
        print("success");
      }, failure: (error) {
        print("Error in detailed");
      });
    }
    setLoading(false);
  }


  
}