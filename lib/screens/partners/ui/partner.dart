import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/models/category_model.dart';
import 'package:flutter_qpay_client/screens/partners/provider/partners_provider.dart';
import 'package:flutter_qpay_client/screens/partners/ui/subcategories.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartnerPage extends StatelessWidget {
  const PartnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<PartnersProvider>(
      model: PartnersProvider(),
      builder: (context, model, child) {
        return GestureDetector(
          onTap: () {},
          child: Scaffold(
            appBar: _buildAppBarWithSearchField(model),
            body: SingleChildScrollView(
              // controller: model.isSearchingPartner
              //     ? model.partnersController
              //     : model.searchController,
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
                  // FutureBuilder<List<CategoriesModel>>(
                  //     // future: model.fCategoryModel,
                  //     builder: (context, snapshot) {
                  //       if (snapshot.hasData) {
                  //         return 
                          ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => SubcategoriesPage(
                                  //       id: snapshot.data![index].id,
                                  //       title: snapshot.data![index].name,
                                  //     ),
                                  //   ),
                                  // );
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SubcategoriesPage()));
                                },
                                child: Container(
                                  height: 62,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [kWhiteBoxshadow],
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 25),
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(AppSvgImages.ic_bag),
                                      // SvgPicture.network(
                                      //     snapshot.data![index].icon),
                                      UIHelper.horizontalSpace(15),
                                      Text(
                                        // snapshot.data![index].name,
                                        'Магазин',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                      Spacer(),
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
                                UIHelper.verticalSpace(10),
                            itemCount: 10,
                            // itemCount: snapshot.data.length,
                          ),
                      //   } else
                      //     return Container(
                      //       // color: Colors.red,
                      //       width: double.maxFinite,
                      //       height: 200,
                      //       child: Center(
                      //         child: CircularProgressIndicator(
                      //           color: AppColors.primaryColor,
                      //         ),
                      //       ),
                      //     );
                      // }),
                  UIHelper.verticalSpace(50),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _buildAppBarWithSearchField(PartnersProvider model) {
    return CustomAppBar(
      height: getProportionateScreenHeight(160),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Партнеры',
            style: kLargeTitleTextStyle,
          ),
          UIHelper.verticalSpace(
            getProportionateScreenHeight(30),
          ),
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
                        // if (value == "") {
                        //   model.searchListClear();
                        // } else {
                        //   await model.searchPartner(value);
                        // }
                        // state.search(value);
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
    );
  }
}
