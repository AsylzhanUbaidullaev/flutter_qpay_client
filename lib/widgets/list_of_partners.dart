import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/screens/partners/provider/subcategory_details_provider.dart';
// import 'package:flutter_qpay_client/models/partner_list_model.dart';
import 'package:flutter_qpay_client/screens/partners/ui/partner_details.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_svg/svg.dart';

listOfPartners(
  // List<DataOfPartnerListModel>? list
  SubcategoryDetailsProvider model
  ) {
  // return
  // ListView.separated(
  //   shrinkWrap: true,
  //   itemCount: list.length,
  //   physics: NeverScrollableScrollPhysics(),
  //   itemBuilder: (context, preIndex) {
  return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        PartnerDetailsPage(
                          idPartner: model.partnersHasBonuses[index].id
                          )));
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
                  // 'Pandora',
                  model.partnersHasBonuses[index].name!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                ),
                Spacer(),
                Text(
                  // '750 Б',
                  "${model.partnersHasBonuses[index].bonusesSum ?? 0} Б",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.systemGreenColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => UIHelper.verticalSpace(18),
      // itemCount: list[preIndex].data.length);
      itemCount: model.partnersHasBonuses.length,
      // itemCount: list!.length,
      );
  //   },
  //   separatorBuilder: (BuildContext context, int index) =>
  //       UIHelper.verticalSpace(18),
  // );
}
