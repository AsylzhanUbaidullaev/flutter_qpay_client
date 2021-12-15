import 'package:flutter/cupertino.dart';
import 'package:flutter_qpay_client/data/data_methods.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';

alertDialogForLogout(BuildContext context) {
  print('called');
  return showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      content: Text(
        'Вы действительно хотите\nвыйти из профиля?',
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: AppColors.blackColor,
        ),
      ),
      actions: [
        CupertinoDialogAction(
          child: Text('Да, выйти'),
          onPressed: () {
            //TODO profile provider
            exitAccount(context);
          },
        ),
        CupertinoDialogAction(
          child: Text(
            'Нет',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () => Navigator.of(context).pop(false),
        ),
      ],
    ),
  );
}