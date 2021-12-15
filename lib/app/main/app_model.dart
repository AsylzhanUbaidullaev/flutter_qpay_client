import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/main/user_data.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/screens/auth/ui/add_name_page.dart';
import 'package:flutter_qpay_client/screens/auth/ui/login_page.dart';
import 'package:flutter_qpay_client/screens/home/ui/home_page.dart';
import 'package:flutter_qpay_client/screens/index.dart';
import 'package:flutter_qpay_client/screens/onboarding/ui/onboarding_page.dart';
import 'package:flutter_qpay_client/utilities/enums.dart';

class MyAppModel extends BaseBloc {
  final UserData _userData = UserData();
  StreamController<ConnectivityResult> connectionStatusController =
      StreamController<ConnectivityResult>();
  var _isAuthenticated = false;
  bool _isPrefillingRequired = false;
  bool isOpeningFirstTime = false;
  Locale _appLocale = Locale("ru");

  Locale get appLocale => _appLocale;

  bool get isAuthenticated => _isAuthenticated;

  bool get isPrefillingRequired => _isPrefillingRequired;

  init() async {
    log('init called');
    var result = await Connectivity().checkConnectivity();
    log('result from init is: $result');
    connectionStatusController.add(result);
    // Subscribe to the connectivity Chanaged Steam
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      // Use Connectivity() here to gather more info if you need t
      log('Internet result is: $result');
      connectionStatusController.add(result);
    });
  }

  Future<void> checkAuth() async {
    String? token = await _userData.getToken();
    print('token from init is $token');
    _isAuthenticated = token != "";
  }

  Future<void> checkPrefillingRequired() async {
    bool? prefilling = await _userData.getPrefillingRequired();
    print('prefilling from init is: $prefilling');
    _isPrefillingRequired = prefilling;
  }

  Widget getHomeScreen() {
    // return HomePage();
    if (_isAuthenticated && !_isPrefillingRequired) {
      return IndexScreen(selectedMenuFromInitial: MenuState.home,);
    } else if (_isAuthenticated && _isPrefillingRequired) {
      return AddNamePage();
    } else {
      if (isOpeningFirstTime) {
        return OnboardingPage();
      } else {
        return LoginPage();
      }
    }
  }
}
