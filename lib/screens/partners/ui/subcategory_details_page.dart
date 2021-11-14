import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/models/partner_model.dart';
import 'package:flutter_qpay_client/screens/partners/provider/subcategory_details_provider.dart';
import 'package:flutter_qpay_client/screens/partners/ui/partner_details.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_with_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_qpay_client/widgets/list_of_partners.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubcategoryDetailsPage extends StatelessWidget {
  const SubcategoryDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<SubcategoryDetailsProvider>(
      model: SubcategoryDetailsProvider(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: CustomAppBar(
            height: getProportionateScreenHeight(160),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppBarChildWithBackButton(title: 'Мебель'),
                UIHelper.verticalSpace(20),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppSvgImages.ic_search),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16,
                          ),
                          child: TextField(
                            onChanged: (value) {
                              // if (value == "") {
                              //   model.toClear();
                              // } else {
                              //   model.searchPartner(value);
                              // }
                            },
                            keyboardType: TextInputType.text,
                            cursorColor: AppColors.primaryColor,
                            decoration: InputDecoration(
                              hintText: 'Название партнера',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: kAppBarDecoration,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(30),
                // model.initPartnerListModel.first.data.isEmpty &&
                //         model.initPartnersWithBonus.isEmpty
                //     ? Center(
                //         child: Card(
                //           color: AppColors.whiteColor,
                //           child: Container(
                //               width: MediaQuery.of(context).size.width * 0.8,
                //               padding: EdgeInsets.symmetric(
                //                   horizontal: 20, vertical: 15),
                //               child: Text(
                //                 "subcategories_has_not_partners",
                //                 textAlign: TextAlign.center,
                //                 style: TextStyle(
                //                   color: AppColors.darkGrayColor,
                //                   fontSize: 14,
                //                   fontWeight: FontWeight.w400,
                //                   fontFamily: 'Inter',
                //                 ),
                //               )),
                //         ),
                //       )
                //     : 
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UIHelper.verticalSpace(10),
                          _getPartnersWithBonuses(model.initPartnersWithBonus),
                          UIHelper.verticalSpace(10),
                          ListView.separated(
                            // itemCount: model.initPartnerListModel.length,
                            itemCount: 3,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return listOfPartners(
                                  // model.initPartnerListModel[index].data
                                  );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return UIHelper.verticalSpace(10);
                            },
                          )
                        ],
                      ),
                model.isMoreInitPartners || model.isMoreSearchPartners
                    ? Column(
                        children: [
                          UIHelper.verticalSpace(15),
                          Center(
                            child: CircularProgressIndicator(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      )
                    : Container(),
                UIHelper.verticalSpace(40),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget _getPartnersWithBonuses(List<PartnerModel> list) {
  return ListView.separated(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PartnerDetailsPage(
                // idPartner: 2,
              ),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [kWhiteBoxshadow],
          ),
          child: Row(
            children: [
              SvgPicture.asset(AppSvgImages.ic_profile),
              UIHelper.horizontalSpace(10),
              Text(
                // list[index].name,
                'Shooqan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor,
                ),
              ),
              Spacer(),
              // list[index].bonusesSum != null
              //     ? 
                  Text(
                      // "${list[index].bonusesSum} Б",
                      '750 Б',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.systemGreenColor,
                      ),
                    )
                  // : Text(
                  //     "${list[index].bonusPercentage} %",
                  //     style: TextStyle(
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w600,
                  //       color: AppColors.blackColor,
                  //     ),
                  //   ),
            ],
          ),
        ),
      );
    },
    separatorBuilder: (context, index) => UIHelper.verticalSpace(18),
    itemCount: list.length,
  );
}