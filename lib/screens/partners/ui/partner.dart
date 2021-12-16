import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
// import 'package:flutter_qpay_client/models/category_model.dart';
import 'package:flutter_qpay_client/screens/partners/provider/partners_provider.dart';
import 'package:flutter_qpay_client/screens/partners/ui/partner_list.dart';
import 'package:flutter_qpay_client/screens/partners/ui/subcategories.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_qpay_client/widgets/loading_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartnerPage extends StatelessWidget {
  const PartnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseProvider<PartnersProvider>(
      onReady: (value) async => await value.init(context),
      model: PartnersProvider(),
      builder: (context, model, child) {
        return model.isLoading ? LoadingView() :
        GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: 
          Scaffold(
            appBar: _buildAppBarWithSearchField(model, context),
            body: model.isLoading ? LoadingView() : !model.isSearching ?
            SingleChildScrollView(
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
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SubcategoriesPage(
                                        id: model.categories[index].id!,
                                        title: model.categories[index].name!
                                      ),
                                    ),
                                  );
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
                                      SvgPicture.network(model.categories[index].icon!),
                                      UIHelper.horizontalSpace(15),
                                      Text(
                                        model.categories[index].name ?? 'Магазин',
                                        // 'Магазин',
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
                            itemCount: model.categories.length,
                            // itemCount: snapshot.data.length,
                          ),
                  UIHelper.verticalSpace(50),
                ],
              ),
            ) : model.isPartnerUpdating ? LoadingView() : PartnerList(
            model: model,
            list1: model.searchPartnersList,
            total: model.searchPaginationList.first.meta!.total,
          ),
          ) 
        );
      },
    );
  }

  _buildAppBarWithSearchField(PartnersProvider model, context) {
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
                        await model.searchPartners();
                      },
                      keyboardType: TextInputType.text,
                      cursorColor: AppColors.primaryColor,
                      focusNode: model.focus,
                      controller: model.searchController,
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
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerRight,
                  ),
                  onPressed: () {
                    model.cancelSearch();
                  },
                  child: Text(
                    'Отменить',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
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
