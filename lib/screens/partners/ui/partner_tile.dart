import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/partner_model.dart';
import 'package:flutter_qpay_client/screens/partners/provider/partners_provider.dart';
import 'package:flutter_qpay_client/screens/partners/ui/partner.dart';
import 'package:flutter_qpay_client/screens/partners/ui/partner_details.dart';
import 'package:flutter_qpay_client/shared/theme.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';

class PartnerTile extends StatelessWidget {
  final PartnerDetail? partner;
  final PartnersProvider? provider;
  PartnerTile({ Key? key, this.partner, this.provider }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PartnerDetailsPage(
              idPartner: partner!.id,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            kWhiteBoxshadow,
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            UIHelper.verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SvgPicture.asset(AppSvgImages.ic_profile),
                  // CircleAvatar(
                  //   backgroundImage: NetworkImage(
                  //             partner!.avatar!,
                  //           ),
                  // ),
                  Center(
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.grayColor,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              partner!.avatar!,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  UIHelper.horizontalSpace(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        partner!.name ?? '',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '${partner!.bonusesSum} Б',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(15),
          ],
        ),
      ),
    );
  }
}