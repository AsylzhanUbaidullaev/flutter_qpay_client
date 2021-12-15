import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/period_picker_provider.dart';
import 'package:flutter_qpay_client/screens/transactions/provider/transactions_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class PeriodPicker extends StatelessWidget {
  final TransactionsProvider transactionsProvider;
  const PeriodPicker({ Key? key, required this.transactionsProvider }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BaseProvider<PeriodPickerProvider>(
      model: PeriodPickerProvider(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: CustomAppBar(
            height: getProportionateScreenHeight(110),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.close),
                      ),
                      Text(
                        'Период времени',
                        style: kLargeTitleTextStyle,
                      ),
                      SizedBox(
                        height: 14,
                        width: 14,
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(15),
                ],
              ),
            ),
          ),
          backgroundColor: AppColors.whiteColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 30,
                  height: 40,
                  child: model.startDate == null && model.endDate == null
                      ? Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffF8F8F8),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            DateFormat('dd MMMM').format(
                              DateTime.now(),
                            ),
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.blackColor,
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffF8F8F8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                model.startDate!,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                            // SvgPicture.asset(AppSvgImages.ic_line),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffF8F8F8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                model.endDate!,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
                _buildCalendar(context, model),
              ],
            ),
          ),
          bottomNavigationBar: _buildBottomNavbar(context, model),
        );
      },
    );
  }

  _buildCalendar(
      BuildContext context, PeriodPickerProvider model) {
    return Positioned(
      left: 0,
      top: 80,
      right: 0,
      bottom: 0,
      child: SfDateRangePicker(
        selectionTextStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.whiteColor,
        ),
        selectionRadius: 15,
        headerStyle: DateRangePickerHeaderStyle(
          backgroundColor: AppColors.darkWhiteColor,
          textAlign: TextAlign.start,
          textStyle: TextStyle(
            fontSize: 16,
            color: AppColors.blackColor,
          ),
        ),
        monthViewSettings: DateRangePickerMonthViewSettings(
          weekendDays: [6, 7],
          dayFormat: 'EEE',
          showTrailingAndLeadingDates: true,
          firstDayOfWeek: 1,
          viewHeaderHeight: 38,
          viewHeaderStyle: DateRangePickerViewHeaderStyle(
            textStyle: TextStyle(
              fontSize: 12,
              color: Color(0xff6E7781),
              fontFamily: 'Roboto',
            ),
          ),
        ),
        showNavigationArrow: true,
        navigationMode: DateRangePickerNavigationMode.scroll,
        view: DateRangePickerView.month,
        viewSpacing: 5,
        navigationDirection: DateRangePickerNavigationDirection.vertical,
        onSelectionChanged: model.onSelectionChanged,
        selectionMode: DateRangePickerSelectionMode.range,
        todayHighlightColor: Color(0xff6E7781),
        startRangeSelectionColor: AppColors.primaryColor,
        endRangeSelectionColor: AppColors.primaryColor,
        rangeSelectionColor: AppColors.primaryColor.withOpacity(0.05),
        initialSelectedDate: DateTime.now(),
        initialSelectedRange: PickerDateRange(
          DateTime.now(),
          DateTime.now(),
        ),
      ),
    );
  }

  _buildBottomNavbar(
      BuildContext context, PeriodPickerProvider model) {
    return Container(
      padding: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -20),
            blurRadius: 16,
            spreadRadius: -4,
            color: AppColors.blackColor.withOpacity(0.05),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 20,
          ),
          child: DefaultButton(
            text: 'Выбрать',
            width: double.infinity,
            press: () {
              model.saveChangedDate(context, transactionsProvider);
            },
          ),
        ),
      ),
    );
  }
}