import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({this.text, this.onPress});
  final String? text;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: AppColors.primaryColor,
        padding: EdgeInsets.zero,
      ),
      child: Text(
        text!,
        style: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Inter',
        ),
      ),
      onPressed: onPress as void Function()?,
    );
  }
}
