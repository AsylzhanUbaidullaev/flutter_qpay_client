

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/profile_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/screens/profile/provider/profile_provider.dart';
import 'package:flutter_qpay_client/services/profile_service.dart';

class ChangeProfileProvider extends BaseBloc {
  
  ProfileService _profileService = ProfileService();
  TextEditingController nameController = TextEditingController();
  bool isButtonEnabled = false;

  init(String name) {
    nameController.text = name;
    
    // changeUserData(context);
  }
  changeUserData(context, String name, ProfileProvider provider) async {
    var data = {
      "name": nameController.text,
      "image": null,
    };
    Result<dynamic, NetworkError> c = await _profileService.changeUserData(data);
    c.when(success: (response) {
      // Navigator.pop(context, true);
      Navigator.of(context).pop(provider.init());
      print("Success (Change Profile Provider)");
    }, failure: (error) {
      print('Error during chnage name (Change Profile Provider)');
    });
  }

  checkValues() {
    if(nameController.text.length > 1) {
      isButtonEnabled = true;
      notifyListeners();
    } else {
      isButtonEnabled = false;
      notifyListeners();
    }
  }
}