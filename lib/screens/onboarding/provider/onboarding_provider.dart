import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/screens/auth/ui/login_page.dart';

class OnboardingProvider extends BaseBloc {
  int _pageNumber = 0;
  int get pageNumber => _pageNumber;
  PageController pageController = PageController(initialPage: 0);

  nextPage() {
    _pageNumber += 1;
    pageController.animateToPage(
      _pageNumber,
      duration: Duration(milliseconds: 1500),
      curve: Curves.fastLinearToSlowEaseIn,
    );
    notifyListeners();
  }

  previousPage() {
    _pageNumber -= 1;
    pageController.animateToPage(
      _pageNumber,
      duration: Duration(milliseconds: 1500),
      curve: Curves.fastLinearToSlowEaseIn,
    );
    notifyListeners();
  }

  setPageNumber(int value) {
    _pageNumber = value;
    notifyListeners();
  }

  toLoginPage(context) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
  }
}
