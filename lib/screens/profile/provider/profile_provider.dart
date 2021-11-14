import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';
import 'package:flutter_qpay_client/screens/profile/ui/change_profile.dart';

class ProfileProvider extends BaseBloc {

  toChangeProfile(BuildContext context, name, imgURL) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChangeProfilePage(
          name: name,
          imgURL: imgURL,
        ),
      ),
    );
  }
}