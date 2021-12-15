import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InitLoadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Center(
        child: SvgPicture.asset('assets/images/svg/launcher_icon.svg'),
      ),
    );
  }
}
