// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_qpay_client/app/main/app.dart';
import 'package:flutter_qpay_client/app/main/app_model.dart';
import 'package:flutter_qpay_client/data/data_keys.dart';
import 'package:flutter_qpay_client/screens/home/ui/home_page.dart';
import 'package:flutter_qpay_client/screens/index.dart';
import 'package:flutter_qpay_client/screens/loading_page.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/onboarding/ui/onboarding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /// Set device orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Проверка аутентификации
  final model = MyAppModel();
  await model.init();
  await model.checkAuth();
  await model.checkPrefillingRequired();

  runApp(MyApp(model: model));
}

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool internetHas = true;
//   bool loadingScreen = true;
//   bool index = false;

//   checkIndex() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     Future.delayed(const Duration(milliseconds: 300), () {
//       setState(() {
//         loadingScreen = false;
//       });
//     });
//     if (prefs.getString(kToken) != null) {
//       // if user logged => Navigate to HomePage
//       print(prefs.getString(kToken));
//       setState(() {
//         index = true;
//       });
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     checkIndex();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Q Pay Client',
//       theme: ThemeData(
//         textTheme: TextTheme(
//           bodyText1: TextStyle(),
//           bodyText2: TextStyle(),
//         ).apply(
//           bodyColor: AppColors.blackColor,
//         ),
//         primaryColor: AppColors.primaryColor,
//         fontFamily: 'Inter',
//       ),
//       home: loadingScreen
//           ? InitLoadPage()
//           : index
//               ? IndexScreen(selectedMenuFromInitial: MenuState.home)
//               : OnboardingPage(),
//       // IndexScreen(selectedMenuFromInitial: MenuState.home),
//       // OnboardingPage(),
//     );
//   }
// }
