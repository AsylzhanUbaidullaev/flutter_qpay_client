
import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/shared/theme.dart';
import 'package:flutter_svg/svg.dart';

class AppBarChildWithBackButton extends StatelessWidget {
  final String? title;
  const AppBarChildWithBackButton({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
          icon: SvgPicture.asset(AppSvgImages.ic_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          title!,
          style: kLargeTitleTextStyle,
        ),
        IconButton(
          icon: Container(),
          onPressed: () {},
        ),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     InkWell(
        //       child: Container(
        //         padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
        //         height: 24,
        //         width: 24,
        //         child: SvgPicture.asset(AppSvgImages.ic_back),
        //       ),
        //       onTap: () {
        //         Navigator.of(context).pop();
        //       },
        //     ),
        //     UIHelper.verticalSpace(18),
        //   ],
        // ),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        // Text(
        //   title,
        //   style: kLargeTitleTextStyle,
        // ),
        //     UIHelper.verticalSpace(15),
        //   ],
        // ),
        // SizedBox(width: 7),
      ],
    );
  }
}
