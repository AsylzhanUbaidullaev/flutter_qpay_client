// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';

import 'screens/onboarding/ui/onboarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Q Pay Client',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: AppColors.blackColor,
        ),
        primaryColor: AppColors.primaryColor,
        fontFamily: 'Inter',
      ),
      home: OnboardingPage(),
    );
  }
}