import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/partners/provider/subcategories_provider.dart';
import 'package:flutter_qpay_client/screens/partners/ui/subcategory_details_page.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_with_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_qpay_client/widgets/list_of_partners.dart';
import 'package:flutter_qpay_client/widgets/loading_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubcategoriesPage extends StatelessWidget {
  final int id;
  final String title;
  const SubcategoriesPage({ Key? key, required this.id, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<SubcategoriesProvider>(
      onReady: (value) async => await value.init(context, id),
      model: SubcategoriesProvider(),
      builder: (context, model, child) {
        return model.isLoading ? LoadingView() :
        Scaffold(
          appBar: CustomAppBar(
            height: getProportionateScreenHeight(160),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppBarChildWithBackButton(title: title),
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
                            onChanged: (value) async {
                              // if (value != "") {
                              //   await model.searchPartner(value);
                              // } else {
                              //   model.toClear();
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Категорий',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
                UIHelper.verticalSpace(15),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SubcategoryDetailsPage(
                                          id: model.subcategories![index].id!,
                                          title: model.subcategories![index].name!,
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 25),
                                padding: EdgeInsets.only(
                                  left: 15,
                                  right: 23,
                                ),
                                height: 54,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [kWhiteBoxshadow],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      model.subcategories![index].name!,
                                      // snapshot.data![index].name,
                                      // 'Мебель',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                      width: 15,
                                      child: SvgPicture.asset(
                                        AppSvgImages.ic_arrow_right,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              UIHelper.verticalSpace(18),
                          itemCount: model.subcategories!.length,
                          // itemCount: 7,
                        ),
                UIHelper.verticalSpace(30),
                // model.initPartners.first.data.isNotEmpty
                //     ? 
                    // Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 25),
                    //         child: Text(
                    //           'Партнеры',
                    //           style: TextStyle(
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w500,
                    //             color: AppColors.blackColor,
                    //           ),
                    //         ),
                    //       ),
                    //       UIHelper.verticalSpace(18),
                    //       ListView.separated(
                    //         // itemCount: model.initPartners.length,
                    //         itemCount: 2,
                    //         shrinkWrap: true,
                    //         physics: NeverScrollableScrollPhysics(),
                    //         itemBuilder: (context, index) {
                    //           return listOfPartners(
                    //               model
                    //               );
                    //         },
                    //         separatorBuilder: (BuildContext context, int index) {
                    //           return UIHelper.verticalSpace(10);
                    //         },
                    //       )
                    //     ],
                    //   ),
                    // : Container(),
                // model.isMoreParnersLoading
                //     ? Center(
                //         child: CircularProgressIndicator(
                //           color: AppColors.primaryColor,
                //         ),
                //       )
                //     : SizedBox(),
                // model.isMoreSearchParnersLoading
                //     ? Center(
                //         child: CircularProgressIndicator(
                //           color: AppColors.primaryColor,
                //         ),
                //       )
                //     : SizedBox(),
                UIHelper.verticalSpace(40),
              ],
            ),
          ),
        );
      },
    );
  }
}
