import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_icon_button.dart';
import '../models/userprofilelist2_item_model.dart';

// ignore: must_be_immutable
class Userprofilelist2ItemWidget extends StatelessWidget {
  Userprofilelist2ItemWidget(
    this.userprofilelist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist2ItemModel userprofilelist2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 166.h,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(bottom: 1.v),
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomElevatedButton(
                    height: 19.v,
                    width: 33.h,
                    text: "lbl_4_7".tr,
                    buttonTextStyle: CustomTextStyles.poppinsBlack900,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 10.v,
                    width: 11.h,
                    margin: EdgeInsets.only(
                      left: 102.h,
                      top: 3.v,
                      bottom: 5.v,
                    ),
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgTrenchClassiqu,
                height: 80.v,
                width: 65.h,
              ),
              SizedBox(height: 3.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    userprofilelist2ItemModelObj.computerText!,
                    style: CustomTextStyles.labelMediumErrorContainer,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    userprofilelist2ItemModelObj.supplierName!,
                    style: CustomTextStyles.montserratBlack900Medium,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userprofilelist2ItemModelObj.price!,
                    style: CustomTextStyles.labelMediumErrorContainerSemiBold,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      userprofilelist2ItemModelObj.discount!,
                      style: CustomTextStyles.labelMediumIndigo90001SemiBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 84.h),
                    child: CustomIconButton(
                      height: 14.v,
                      width: 15.h,
                      padding: EdgeInsets.all(1.h),
                      decoration: IconButtonStyleHelper.fillIndigo,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgClose,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
