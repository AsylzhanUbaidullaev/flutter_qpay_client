
import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/shared/theme.dart';
import 'package:flutter_qpay_client/shared/ui_helper.dart';

class AppBarWithoutBackButton extends StatelessWidget {
  final String? title;
  const AppBarWithoutBackButton({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title!,
          style: kLargeTitleTextStyle,
        ),
        UIHelper.verticalSpace(15),
      ],
    );
  }
}
