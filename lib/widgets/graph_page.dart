import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/shared/theme.dart';

class GraphPage extends StatelessWidget {
  final Widget? child;
  final String? bottomText;

  GraphPage({this.child, this.bottomText});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Container(
              height: 256,
              padding: EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  kWhiteBoxshadow,
                ],
              ),
              child: child,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              bottomText!,
              style: TextStyle(
                height: 1.2,
                color: AppColors.grayColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
