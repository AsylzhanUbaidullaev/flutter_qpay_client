import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/profile/provider/help_provider.dart';
import 'package:flutter_qpay_client/screens/profile/ui/help_option_detailed.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_with_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: getProportionateScreenHeight(110),
        child: AppBarChildWithBackButton(title: 'Помощь'),
        decoration: kAppBarDecoration,
      ),
      backgroundColor: AppColors.whiteColor,
      body: BaseProvider<HelpProvider>(
        model: HelpProvider(),
        builder: (context, model, child) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                UIHelper.verticalSpace(5),
                ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HelpOptionPage(
                              title: model.helpTypes[index].name,
                              helpOptionId: model.helpTypes[index].id,
                              items: model.helpTypes[index].items,
                            ),
                          ),
                        );
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => HelpOptionPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${model.helpTypes[index].name}"),
                            // Text('Общее вопросы'),
                            SvgPicture.asset(AppSvgImages.ic_arrow_right),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(height: 1),
                  itemCount: model.helpTypes.length,
                  // itemCount: 2,
                ),
                Divider(height: 1),
              ],
            ),
          );
        },
      ),
    );
  }
}