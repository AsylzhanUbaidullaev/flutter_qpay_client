import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/profile/provider/profile_provider.dart';
import 'package:flutter_qpay_client/screens/profile/ui/help.dart';
import 'package:flutter_qpay_client/screens/profile/ui/logout_alert.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_without_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: getProportionateScreenHeight(110),
        child: AppBarWithoutBackButton(title: 'Профиль'),
        decoration: kAppBarDecoration,
      ),
      body: BaseProvider<ProfileProvider>(
        model: ProfileProvider(),
        builder: (context, model, child) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            AppColors.primaryColor.withOpacity(0.9),
                        // backgroundImage: NetworkImage(snapshot.data.image),
                        maxRadius: MediaQuery.of(context).size.width * 0.11,
                        minRadius: MediaQuery.of(context).size.width * 0.09,
                        child: SvgPicture.asset(AppSvgImages.ic_profile_pic),
                      ),
                      UIHelper.horizontalSpace(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // '${snapshot.data.name}',
                            'Самат',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor,
                            ),
                          ),
                          UIHelper.verticalSpace(10),
                          Text(
                            // '${snapshot.data.phone}',
                            '+7 747 633 8071',
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColors.grayColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                UIHelper.verticalSpace(20),
                Container(
                  width: double.infinity,
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0.0,
                      shadowColor: AppColors.primaryColor.withOpacity(0.05),
                      primary: AppColors.primaryColor.withOpacity(0.05),
                    ),
                    onPressed: () {
                      // model.toChangeProfile(
                      //     context, snapshot.data.name, snapshot.data.image);
                      model.toChangeProfile(context, 'Самат', 'img');
                    },
                    child: Text(
                      'Изменить',
                      // "change".tr(),
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
                UIHelper.verticalSpace(20),
                Container(
                  color: AppColors.whiteColor,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HelpPage()));
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 19),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(AppSvgImages.ic_help),
                                  UIHelper.horizontalSpace(14),
                                  Text(
                                    'Помощь',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.blackColor,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // ProfileOptionWithFunc(
                      //   text: "change_lang".tr(),
                      //   onTap: () async {
                      //     print("tapped");

                      //     showModalBottomSheet(
                      //       context: context,
                      //       isScrollControlled: true,
                      //       builder: (context) {
                      //         return Wrap(
                      //           children: [ChangeLang()],
                      //         );
                      //       },
                      //     ).then((value) => (context as Element).reassemble());
                      //   },
                      // ),
                      InkWell(
                        onTap: () {
                          alertDialogForLogout(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 19),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(AppSvgImages.ic_logout),
                                  UIHelper.horizontalSpace(14),
                                  Text(
                                    'Выйти',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.blackColor,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


// class ProfileOption extends StatelessWidget {
//   final String? text;
//   final Function? onTap;
//   final String? svg;
//   const ProfileOption({
//     Key? key,
//     this.text,
//     this.svg,
//     this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap!(),
//       child: Container(
//         width: double.infinity,
//         padding: EdgeInsets.symmetric(horizontal: 25, vertical: 19),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 SvgPicture.asset(svg!),
//                 UIHelper.horizontalSpace(14),
//                 Text(
//                   text!,
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: AppColors.blackColor,
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProfileOptionWithFunc extends StatelessWidget {
//   final String? text;

//   final Function? onTap;

//   const ProfileOptionWithFunc({
//     Key? key,
//     this.text,
//     this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap!(),
//       child: Container(
//         width: double.infinity,
//         padding: EdgeInsets.symmetric(horizontal: 25, vertical: 19),
//         child: Row(
//           children: [
//             SvgPicture.asset(
//               "assets/images/svg/ic_globe.svg",
//               color: AppColors.darkGrayColor,
//             ),
//             UIHelper.horizontalSpace(14),
//             Text(
//               text!,
//               style: TextStyle(
//                 fontSize: 16,
//                 color: AppColors.blackColor,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }