import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/onboarding/provider/onboarding_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/custom_text_button.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatelessWidget {
  final List<Map<String, String>> splashData = [
    {
      "title": "Совершайте выгодные\nпокупки в магазинах",
      "text": "Посещайте магазины и\nполучайте выгодные кэшбэки",
      "image": AppSvgImages.splash_1,
    },
    {
      "title": "Накапливайте бонусы\nот ваших покупок",
      "text": "Совершайте несколько покупок и\nувеличивайте ваши бонусы",
      "image": AppSvgImages.splash_2,
    },
    {
      "title": "Возвращайтесь в магазины\nчтобы использовать бонусы",
      "text": "Покупайте больше используя ваши\nнакопленные бонусы",
      "image": AppSvgImages.splash_3,
    },
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BaseProvider<OnboardingProvider>(
        model: OnboardingProvider(),
        builder: (context, model, child) {
          return SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(28),
                    right: getProportionateScreenWidth(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      model.pageNumber == 0
                          ? SizedBox(
                              width: 40,
                              height: 40,
                            )
                          : InkWell(
                              onTap: () {
                                model.previousPage();
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: AppColors.primaryColor,
                                  ),
                                  Text(
                                    'Назад',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      CustomTextButton(
                        text: 'Пропустить',
                        onPress: () {
                          model.toLoginPage(context);
                        },
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: PageView.builder(
                    controller: model.pageController,
                    onPageChanged: (value) {
                      model.setPageNumber(value);
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(37),
                        right: getProportionateScreenWidth(38),
                        top: getProportionateScreenHeight(118),
                      ),
                      child: _buildSplashContent(
                        image: splashData[index]['image'],
                        content: splashData[index]['text'],
                        title: splashData[index]['title'],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDotRow(model),
                      DefaultButton(
                        text: model.pageNumber == 2 ? 'Начать' : 'Дальше',
                        press: model.pageNumber == 2
                            ? () {
                                model.toLoginPage(context);
                              }
                            : () {
                                model.nextPage();
                              },
                        width: 120, 
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
                UIHelper.verticalSpace(20 ),
              ],
            ),
          );
        },
      ),
    );
  }

  _buildSplashContent({String? title, String? content, String? image}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            image!,
            height: getProportionateScreenHeight(200),
            width: getProportionateScreenWidth(300),
          ),
        ),
        UIHelper.verticalSpace(50),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                color: AppColors.blackColor,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),
            ),
            UIHelper.verticalSpace(10),
            Text(
              content!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.grayColor,
                fontSize: getProportionateScreenWidth(16),
                fontFamily: 'Inter',
              ),
            ),
          ],
        ),
      ],
    );
  }

  _buildDotRow(OnboardingProvider model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        splashData.length,
        (index) => Container(
          margin: EdgeInsets.only(right: 10),
          height: 4,
          width: model.pageNumber == index ? 24 : 10,
          decoration: BoxDecoration(
            color: model.pageNumber == index
                ? AppColors.primaryColor
                : AppColors.grayColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}