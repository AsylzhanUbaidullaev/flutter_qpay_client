// ignore: import_of_legacy_library_into_null_safe
import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/screens/home/ui/home_page.dart';
import 'package:flutter_qpay_client/screens/home/ui/send_to_friend_page.dart';
import 'package:flutter_qpay_client/screens/partners/ui/partner.dart';
import 'package:flutter_qpay_client/screens/profile/ui/profile.dart';
import 'package:flutter_qpay_client/screens/transactions/ui/transactions.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/enums.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndexScreen extends StatefulWidget {
  IndexScreen({required this.selectedMenuFromInitial});
  final MenuState selectedMenuFromInitial;
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  PageController? _myPage;
  MenuState? selectedMenu;

  @override
  void initState() {
    selectedMenu = widget.selectedMenuFromInitial;
    _myPage = PageController(
      initialPage: selectedMenu == MenuState.home
          ? 0
          : selectedMenu == MenuState.transactions
              ? 1
              : selectedMenu == MenuState.clients
                  ? 2
                  : selectedMenu == MenuState.settings
                      ? 3
                      : 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> screens = [
      HomePage(),
      TransactionPage(),
      PartnerPage(),
      ProfilePage(),
    ];
    
    int bottomNavIndex = 0;
    return CustomScaffold(
      scaffold: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _myPage,
          children: screens,
        ),
        floatingActionButton: MediaQuery.of(context).viewInsets.bottom == 0
            ? SizedBox(
                width: 48,
                height: 48,
                child: FloatingActionButton(
                  backgroundColor: AppColors.primaryColor,
                  tooltip: '',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SendToFriend(),
                      ),
                    );
                  },
                  child: SvgPicture.asset(AppSvgImages.ic_arrow_top),
                ),
              )
            : SizedBox(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: AppColors.inactiveColor,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (int index) {},
            items: [
              BottomNavigationBarItem(icon: SvgPicture.asset(AppSvgImages.ic_home), label: 'home'),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppSvgImages.ic_transactions), label: 'transactions'),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppSvgImages.ic_partners), label: 'partners'),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppSvgImages.ic_settings), label: 'settings'),
              
            ],
          ),
      ),
      children: screens,
      onItemTap: (int index) => setState(() => bottomNavIndex = index),
    );
  }
}
