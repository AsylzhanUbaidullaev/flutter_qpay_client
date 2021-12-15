import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/shared/size_config.dart';

class AppColors {
  AppColors._();

  ///[_Primary Colors]
  static const Color primaryColor = Color(0xff2E4392);
  static const Color lightBlueColor = Color(0xffE7ECF1);

  ///[_Text Colors]
  static const Color blackColor = Color(0xff0A1929);
  static const Color darkGrayColor = Color(0xff686868);
  static const Color grayColor = Color(0xff999999);
  static const Color gray2Color = Color(0xffc4c4c4);
  static const Color inactiveColor = Color(0xffafb2b5);

  ///[_Background and Stroke colors]
  static const Color darkWhiteColor = Color(0xfffafafa);
  static const Color whiteColor = Color(0xffffffff);
  static const Color strokeColor = Color(0xffe4e4e4);
  //System Colors
  static const Color systemRedColor = Color(0xffe92626);
  static const Color systemGreenColor = Color(0xff4ac55c);
}

class AppSvgImages {
  ///[_Illustrations]
  static const String splash_1 = 'assets/images/svg/splash_1.svg';
  static const String splash_2 = 'assets/images/svg/splash_2.svg';
  static const String splash_3 = 'assets/images/svg/splash_3.svg';
  static const String add_employees = 'assets/images/svg/add_employees.svg';

  ///[_Navbar icons]
  static const String ic_home = 'assets/images/svg/ic_home.svg';
  static const String ic_transactions = 'assets/images/svg/ic_transactions.svg';
  static const String ic_clients = 'assets/images/svg/ic_clients.svg';
  static const String ic_settings = 'assets/images/svg/ic_settings.svg';
  static const String ic_arrow_top = 'assets/images/svg/ic_arrow_top.svg';

  ///[_Progress State Icons]
  static const String ic_checkmark = 'assets/images/svg/ic_checkmark.svg';
  static const String ic_error = 'assets/images/svg/ic_error.svg';

  ///[_Activation icons]
  static const ic_activation = 'assets/images/svg/ic_activation.svg';
  static const ic_transaction = 'assets/images/svg/ic_transaction.svg';

  ///[Profile icons]
  static const ic_profile_pic = 'assets/images/svg/ic_profile_pic.svg';
  static const ic_bag = 'assets/images/svg/ic_bag.svg';
  static const ic_employers = 'assets/images/svg/ic_employers.svg';
  static const ic_bonus = 'assets/images/svg/ic_bonus.svg';
  static const ic_subscription = 'assets/images/svg/ic_subscription.svg';
  static const ic_help = 'assets/images/svg/ic_help.svg';
  static const ic_logout = 'assets/images/svg/ic_logout.svg';

  ///[_]
  static const ic_wallet = 'assets/images/svg/ic_wallet.svg';
  static const ic_contact = 'assets/images/svg/ic_contact.svg';
  static const ic_back = 'assets/images/svg/ic_back.svg';
  static const ic_arrow_down = 'assets/images/svg/ic_arrow_down.svg';
  static const ic_swipe = 'assets/images/svg/ic_swipe.svg';
  static const ic_check = 'assets/images/svg/ic_check.svg';
  static const ic_empty_check = 'assets/images/svg/ic_empty_check.svg';
  static const ic_arrow_right = 'assets/images/svg/ic_arrow_right.svg';
  static const ic_arrow_up = 'assets/images/svg/ic_arrow_up.svg';

  static const ic_transaction_circle =
      'assets/images/svg/ic_transaction_circle.svg';
  static const ic_transaction_circle_person =
      'assets/images/svg/ic_transaction_circle_person.svg';
  static const ic_dot = 'assets/images/svg/ic_dot.svg';
  static const ic_calendar = 'assets/images/svg/ic_calendar.svg';
  static const ic_export = 'assets/images/svg/ic_export.svg';
  static const ic_comments = 'assets/images/svg/ic_comments.svg';
  static const ic_profile = 'assets/images/svg/ic_profile.svg';
  static const ic_search = 'assets/images/svg/ic_search.svg';
  static const ic_precentage = 'assets/images/svg/ic_percentage.svg';
  static const ic_edit = 'assets/images/svg/ic_edit.svg';
  static const ic_delete = 'assets/images/svg/ic_delete.svg';
  static const ic_plus = 'assets/images/svg/ic_plus.svg';
  static const ic_city_check = 'assets/images/svg/ic_city_check.svg';
  static const String ic_visa_card = 'assets/images/svg/visa_card.svg';
  static const String ic_master_card = 'assets/images/svg/mastercard_card.svg';
  static const String ic_card_trash = 'assets/images/svg/ic_card_trash.svg';
  static const String ic_choose_filled =
      'assets/images/svg/ic_choose_filled.svg';
  static const String ic_choose = 'assets/images/svg/ic_choose.svg';
  static const String ic_card_delete = 'assets/images/svg/ic_card_delete.svg';
  static const String ic_success = 'assets/images/svg/ic_success.svg';
  static const String ic_failure = 'assets/images/svg/ic_failure.svg';
  static const String ic_profiles = 'assets/images/svg/profiles.svg';
  static const ic_address = 'assets/images/svg/ic_address.svg';
  static const ic_phone = 'assets/images/svg/ic_phone.svg';
  static const ic_globe = 'assets/images/svg/ic_globe.svg';
  static const ic_line = 'assets/images/svg/ic_line.svg';
}

final BoxDecoration kAppBarDecoration = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Color(0xff000000).withOpacity(0.05),
      spreadRadius: 4,
      blurRadius: 16,
      offset: Offset(0.0, 0.75),
    ),
  ],
);

final BoxDecoration kPinPutDecoration = BoxDecoration(
  color: Color(0xffF8F8F8),
  borderRadius: BorderRadius.circular(8),
);

final TextStyle kLargeTitleTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(18),
  fontFamily: 'Inter',
  fontWeight: FontWeight.w500,
  color: AppColors.blackColor,
);

final BoxShadow kWhiteBoxshadow = BoxShadow(
  color: Color(0xff000000).withOpacity(0.05),
  spreadRadius: 2,
  blurRadius: 16,
);
