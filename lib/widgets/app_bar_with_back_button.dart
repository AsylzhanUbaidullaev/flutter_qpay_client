import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_svg/svg.dart';

class AppBarChildWithBackButton extends StatelessWidget {
  final String title;
  const AppBarChildWithBackButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          icon: SvgPicture.asset(AppSvgImages.ic_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          title,
          style: kLargeTitleTextStyle,
        ),
        IconButton(
          padding: EdgeInsets.zero,
          icon: Container(),
          onPressed: () {},
        ),
      ],
    );
  }
}
