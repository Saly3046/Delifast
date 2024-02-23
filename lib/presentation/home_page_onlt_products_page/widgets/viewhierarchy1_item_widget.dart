import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_icon_button.dart';
import '../models/viewhierarchy1_item_model.dart';

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget(
    this.viewhierarchy1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy1ItemModel viewhierarchy1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRatingSection(context),
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
            alignment: Alignment.center,
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              viewhierarchy1ItemModelObj.computerText!,
              style: CustomTextStyles.labelMediumErrorContainer,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              viewhierarchy1ItemModelObj.supplierName!,
              style: CustomTextStyles.montserratBlack900Medium,
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  viewhierarchy1ItemModelObj.price!,
                  style: CustomTextStyles.labelMediumErrorContainerSemiBold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    viewhierarchy1ItemModelObj.currency!,
                    style: CustomTextStyles.labelMediumIndigo90001SemiBold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 85.h),
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRatingSection(BuildContext context) {
    return CustomElevatedButton(
      height: 19.v,
      width: 33.h,
      text: "lbl_4_7".tr,
      buttonTextStyle: CustomTextStyles.poppinsBlack900,
    );
  }
}
