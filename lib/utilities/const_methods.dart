import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/home/provider/city_alert_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';

final BoxDecoration kPinPutDecoration = BoxDecoration(
  color: Color(0xffF8F8F8),
  borderRadius: BorderRadius.circular(8),
);

appBar(context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(getProportionateScreenHeight(70)),
    child: AppBar(
      backgroundColor: AppColors.whiteColor,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      // toolbarHeight: getProportionateScreenHeight(90),
      centerTitle: true,
      title: Text(
        'Главная',
        style: kLargeTitleTextStyle,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: TextButton(
            style: TextButton.styleFrom(
              primary: AppColors.primaryColor,
              padding: EdgeInsets.zero,
            ),
            child: Text(
              'Алматы',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return BaseProvider<CityAlertDialog>(
                      model: CityAlertDialog(),
                      builder: (context, model, child) {
                        return AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            'Выберите город',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.blackColor,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          content: Scrollbar(
                            child: SingleChildScrollView(
                              child: Container(
                                width: double.maxFinite,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 15,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            // Navigator.pop(context);
                                            // homeState.setCityNameAndId(
                                            //     snapshot.data[index].name,
                                            //     snapshot.data[index].id,
                                            //     context);
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            color: index % 2 == 0
                                                ? AppColors.whiteColor
                                                : Color(0xffDFDFDF),
                                            padding: EdgeInsets.symmetric(
                                              vertical: 17,
                                              horizontal: 19,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  // model.cities[index],
                                                  'Аккент',
                                                  
                                                  // snapshot.data[index].name,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: AppColors.blackColor,
                                                  ),
                                                ),
                                                // index == cityId
                                                //     // model
                                                //     //     .selectedCity
                                                //     ? SvgPicture.asset(
                                                //         AppSvgImages
                                                //             .ic_city_check)
                                                //     // SizedBox()
                                                //     : SizedBox(),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  });
            },
          ),
        )
      ],
    ),
  );
}

final TextStyle kLargeTitleTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(18),
  fontFamily: 'Inter',
  fontWeight: FontWeight.w500,
  color: AppColors.blackColor,
);

final BoxShadow kWhiteBoxshadow = BoxShadow(
  color: Color(0xff000000).withOpacity(0.05),
  spreadRadius: 2,
  blurRadius: 16,
);

final BoxDecoration kAppBarDecoration = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Color(0xff000000).withOpacity(0.05),
      spreadRadius: 4,
      blurRadius: 16,
      offset: Offset(0.0, 0.75),
    ),
  ],
);
