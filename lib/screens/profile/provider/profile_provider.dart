import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/profile_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/data/data_methods.dart';
import 'package:flutter_qpay_client/screens/profile/ui/change_profile.dart';
import 'package:flutter_qpay_client/services/profile_service.dart';

class ProfileProvider extends BaseBloc {

  ProfileModel? profileModel;
  ProfileService _profileService = ProfileService();

  init() async {
    setLoading(true);

    await getProfileInfo();

    setLoading(false);
  }

  getProfileInfo() async {
    Result<ProfileModel, NetworkError> p = await _profileService.getProfileInfo();
    p.when(success: (response) {
      profileModel = response;
    }, failure: (error) {
      print("Error");
    });
  }

  toChangeProfile(BuildContext context, name, imgURL) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChangeProfilePage(
          name: name,
          imgURL: imgURL,
          profModel: this,
        ),
      ),
    );
  }

  logout(context) async {
    Result<dynamic, NetworkError> logout = await _profileService.logOut();
    logout.when(success: (response) {
      exitAccount(context);
    }, failure: (error) {
      print("Error durig logout (Profile provider)");
    });
  }
}