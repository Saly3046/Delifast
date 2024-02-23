import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_icon_button.dart';
import '../models/viewhierarchy_item_model.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
    this.onTapViewHierarchy,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  VoidCallback? onTapViewHierarchy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapViewHierarchy!.call();
      },
      child: Container(
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
                _buildRatingButton(context),
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
                  viewhierarchyItemModelObj.computerText!,
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
                  viewhierarchyItemModelObj.supplierName!,
                  style: CustomTextStyles.montserratBlack900Medium,
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  viewhierarchyItemModelObj.price!,
                  style: CustomTextStyles.labelMediumErrorContainerSemiBold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    viewhierarchyItemModelObj.currency!,
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
    );
  }

  /// Section Widget
  Widget _buildRatingButton(BuildContext context) {
    return CustomElevatedButton(
      height: 19.v,
      width: 33.h,
      text: "lbl_4_7".tr,
      buttonTextStyle: CustomTextStyles.poppinsBlack900,
    );
  }
}
