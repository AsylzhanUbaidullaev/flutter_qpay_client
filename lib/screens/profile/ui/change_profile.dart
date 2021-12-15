import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/screens/profile/provider/profile_provider.dart';
import 'package:flutter_qpay_client/widgets/default_button.dart';
import 'package:flutter_qpay_client/widgets/loading_view.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_qpay_client/base/base_provider.dart';
import 'package:flutter_qpay_client/screens/profile/provider/change_profile_provider.dart';
import 'package:flutter_qpay_client/utilities/const_fields.dart';
import 'package:flutter_qpay_client/utilities/const_methods.dart';
import 'package:flutter_qpay_client/utilities/size_config.dart';
import 'package:flutter_qpay_client/utilities/ui_helper.dart';
import 'package:flutter_qpay_client/widgets/app_bar_with_back_button.dart';
import 'package:flutter_qpay_client/widgets/custom_app_bar.dart';

class ChangeProfilePage extends StatelessWidget {
  final String name;
  final String imgURL;
  final ProfileProvider profModel;
  const ChangeProfilePage({Key? key, required this.name, required this.imgURL, required this.profModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBar(
          height: getProportionateScreenHeight(110),
          child: AppBarChildWithBackButton(title: 'Изменить профиль'),
          decoration: kAppBarDecoration,
        ),
        backgroundColor: AppColors.whiteColor,
        body: BaseProvider<ChangeProfileProvider>(
          model: ChangeProfileProvider(),
          onReady: (value) async => await value.init(name),
          builder: (context, model, child) {
            return model.isLoading ? LoadingView() :
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIHelper.verticalSpace(30),
                  Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: AppColors.whiteColor,
                      // backgroundImage: model.isImagePicked
                      //     ? FileImage(File(model.pickedImage.path))
                      //     : NetworkImage(widget.imgURL),
                      child: SvgPicture.asset(AppSvgImages.ic_profile_pic),
                    ),
                  ),
                  UIHelper.verticalSpace(15),
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: AppColors.primaryColor,
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'Выбрать фотографию',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      onPressed: () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext context) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: CupertinoActionSheet(
                              actions: [
                                CupertinoActionSheetAction(
                                  child: Text(
                                    'Снять фотографию',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  isDefaultAction: true,
                                  onPressed: () async {
                                    Navigator.pop(context);
                                    // await model.capturePhoto();
                                  },
                                ),
                                CupertinoActionSheetAction(
                                  child: Text(
                                    'Открыть галерею',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  isDefaultAction: true,
                                  onPressed: () async {
                                    Navigator.pop(context);
                                    // await model.pickFromGallery();
                                  },
                                ),
                              ],
                              cancelButton: CupertinoActionSheetAction(
                                child: Text(
                                  'Отменить',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                isDefaultAction: true,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  UIHelper.verticalSpace(30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Имя',
                      style: TextStyle(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  UIHelper.verticalSpace(10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF8F8F8),
                    ),
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      controller: model.nameController,
                      style: TextStyle(color: AppColors.blackColor),
                      cursorColor: AppColors.blackColor,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        model.checkValues();
                      },
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: DefaultButton(
                      width: double.infinity,
                      text: 'Сохранить',
                      color: model.isButtonEnabled ? null : AppColors.inactiveColor,
                      press: () async {
                        // model.isButtonEnabled ?  
                          model.changeUserData(context, model.nameController.text, profModel);
                        // : 
                        //   //TODO add alert dialog
                        //   print('Name cant be empty');
                      
                    
                        // if (model.isImagePicked) {
                        //   print("FILE PICKED!");
                        //   await model.sendChanges(context, controller.text,
                        //       File(model.pickedImage.path), true);
                        // } else {
                        //   await model.sendChanges(
                        //       context, controller.text, File(""), false);
                        // }
                      },
                    ),
                  ),
                  UIHelper.verticalSpace(10),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}