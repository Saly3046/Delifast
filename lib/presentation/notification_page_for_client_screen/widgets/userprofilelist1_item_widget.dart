import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_icon_button.dart';
import 'package:creavexes3/widgets/custom_outlined_button.dart';
import '../models/userprofilelist1_item_model.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillTeal50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  margin: EdgeInsets.only(top: 7.v),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse183,
                        height: 46.adaptSize,
                        width: 46.adaptSize,
                        radius: BorderRadius.circular(
                          23.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse183,
                        height: 46.adaptSize,
                        width: 46.adaptSize,
                        radius: BorderRadius.circular(
                          23.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 13.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.v,
                        width: 108.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                userprofilelist1ItemModelObj
                                    .boutiqueGomezText1!,
                                style: CustomTextStyles
                                    .labelLargePoppinsErrorContainer,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                userprofilelist1ItemModelObj
                                    .boutiqueGomezText2!,
                                style: CustomTextStyles
                                    .labelLargePoppinsErrorContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.v,
                        width: 87.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                userprofilelist1ItemModelObj.lsGomezEsiDzText1!,
                                style: CustomTextStyles
                                    .bodySmallPoppinsBluegray900,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                userprofilelist1ItemModelObj.lsGomezEsiDzText2!,
                                style: CustomTextStyles
                                    .bodySmallPoppinsBluegray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 13.v),
                  child: CustomIconButton(
                    height: 40.v,
                    width: 36.h,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillWhiteATL10,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            width: 284.h,
            margin: EdgeInsets.only(
              left: 4.h,
              right: 54.h,
            ),
            child: Text(
              userprofilelist1ItemModelObj.boutiqueGomezHasText!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelLargeIndigo90001,
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 85.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 14.v,
                    width: 99.h,
                    margin: EdgeInsets.only(top: 7.v),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            userprofilelist1ItemModelObj.didYouLikeThisText1!,
                            style: CustomTextStyles.bodySmallPoppinsBluegray800,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            userprofilelist1ItemModelObj.didYouLikeThisText2!,
                            style: CustomTextStyles.bodySmallPoppinsBluegray800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 21.v,
                    width: 68.h,
                    margin: EdgeInsets.only(left: 11.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              top: 2.v,
                            ),
                            child: Text(
                              userprofilelist1ItemModelObj.refuseText!,
                              style: CustomTextStyles.labelMediumWhiteA700,
                            ),
                          ),
                        ),
                        _buildRefuseButton(context),
                      ],
                    ),
                  ),
                  _buildAcceptButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRefuseButton(BuildContext context) {
    return CustomElevatedButton(
      height: 21.v,
      width: 68.h,
      text: "lbl_refuse".tr,
      buttonStyle: CustomButtonStyles.fillIndigoTL5,
      buttonTextStyle: CustomTextStyles.labelMediumWhiteA700,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildAcceptButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 68.h,
      text: "lbl_accept".tr,
      margin: EdgeInsets.only(left: 11.h),
    );
  }
}
