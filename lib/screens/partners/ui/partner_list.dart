import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/partner_model.dart';
import 'package:flutter_qpay_client/screens/partners/provider/partners_provider.dart';
import 'package:flutter_qpay_client/screens/partners/ui/partner_tile.dart';
import 'package:flutter_qpay_client/shared/theme.dart';
import 'package:flutter_qpay_client/shared/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/loading_view.dart';

class PartnerList extends StatelessWidget {
  final PartnersProvider? model;
  final List<PartnerDetail>? list1;
  final int? total;
  const PartnerList({ Key? key, this.model, this.list1, this.total }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UIHelper.verticalSpace(30),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            '${total!} ' + model!.defineWordForListTitle(total!),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.blackColor,
            ),
          ),
        ),
        UIHelper.verticalSpace(15),
        Flexible(
          child: ListView.builder(
            itemCount: list1!.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  PartnerTile(
                    partner: list1![index],
                    provider: model,
                  ),
                  UIHelper.verticalSpace(16),
                ],
              );
            },
          ),
        ),
        SizedBox(
          height: 15,
        ),
        model!.isMorePartnersLoading ? LoadingView() : SizedBox()
      ],
    );
  }
}