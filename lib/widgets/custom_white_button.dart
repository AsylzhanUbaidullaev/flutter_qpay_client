
import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/shared/theme.dart';
import 'package:flutter_qpay_client/shared/ui_helper.dart';

class CustomWhiteButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final Color textColor;
  final Icon? icon;
  final Widget? leading;
  final double minHeight;
  final Widget? trailing;

  const CustomWhiteButton(
      {this.onPressed,
      this.title = 'Нажмите для выбора',
      this.textColor = AppColors.grayColor,
      this.icon,
      this.leading,
      this.minHeight = 50.0,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black87,
          primary: Colors.white,
          elevation: 0.5,
          minimumSize: Size(88, minHeight),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                leading == null ? SizedBox() : leading!,
                UIHelper.horizontalSpace(leading == null ? 0 : 10),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ],
            ),
            icon == null
                ? trailing == null
                    ? SizedBox()
                    : trailing!
                : icon!
          ],
        ),
      ),
    );
  }
}
