import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/shared/theme.dart';
import 'package:flutter_qpay_client/widgets/custom_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future showDialogCustom(
    {required BuildContext context,
    required Widget child,
    required Color backgroundColor,
    String? title,
    required bool barrierDismissible}) {
  return showGeneralDialog(
    context: context,
    barrierColor: backgroundColor,
    barrierDismissible: barrierDismissible,
    barrierLabel: '',
    // ignore: missing_return
    pageBuilder: (context, animation1, animation2) {
      return CustomActionDialog(
        isDismissible: barrierDismissible,
        ctx: context,
        title: title,
        child: child,
      );
    },
  );
}

showCustomToast(String msg) {
  return Fluttertoast.showToast(
    msg: "$msg",
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 2,
    backgroundColor: AppColors.systemRedColor,
    textColor: AppColors.whiteColor,
    fontSize: 16.0,
    webPosition: "center",
  );
}

showCustomSnackBar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: 1),
      elevation: 5.0,
      behavior: SnackBarBehavior.floating,
      content: Container(
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
          ),
        ),
      ),
      backgroundColor: Colors.red,
    ),
  );
}
