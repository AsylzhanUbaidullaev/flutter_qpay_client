import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/shared/theme.dart';

class ElevatedContainer extends StatelessWidget {
  final Widget? child;
  final double? height;
  ElevatedContainer({this.child, this.height});
  @override
  Widget build(BuildContext context) {
    return Padding(
      //TODO ASsylzhan chort
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: height,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 15, right: 15),
        width: double.infinity,
        child: child,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            kWhiteBoxshadow,
          ],
        ),
      ),
    );
  }
}
