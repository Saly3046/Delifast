import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import '../models/productcard1_item_model.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  Productcard1ItemWidget(
    this.productcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard1ItemModel productcard1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.v),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: productcard1ItemModelObj?.image,
            height: 80.v,
            width: 65.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 3.v,
            ),
          ),
          Container(
            width: 248.h,
            margin: EdgeInsets.only(bottom: 1.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productcard1ItemModelObj.title!,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        productcard1ItemModelObj.supplierName!,
                        style: theme.textTheme.labelSmall,
                      ),
                      SizedBox(height: 2.v),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            child: Text(
                              productcard1ItemModelObj.price!,
                              style: CustomTextStyles.labelLargeErrorContainer,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              productcard1ItemModelObj.discount!,
                              style: CustomTextStyles.labelLargePoppinsRed400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 11.v),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        color: appTheme.whiteA700,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: appTheme.indigo90001,
                            width: 1.h,
                          ),
                          borderRadius: BorderRadiusStyle.roundedBorder2,
                        ),
                        child: Container(
                          height: 20.v,
                          width: 51.h,
                          padding: EdgeInsets.symmetric(horizontal: 1.h),
                          decoration:
                              AppDecoration.outlineIndigo900011.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder2,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath:
                                    productcard1ItemModelObj?.televisionImage,
                                height: 18.v,
                                width: 25.h,
                                alignment: Alignment.centerLeft,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: 36.h,
                                  margin:
                                      EdgeInsets.fromLTRB(5.h, 3.v, 6.h, 1.v),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text(
                                          productcard1ItemModelObj.quantity!,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Text(
                                        productcard1ItemModelObj.quantityValue!,
                                        style: CustomTextStyles
                                            .bodySmallBluegray700,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _buildProductCardRating(context),
                          CustomImageView(
                            imagePath: productcard1ItemModelObj?.favoriteImage,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              bottom: 2.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 47.v),
                    _buildProductCardTrackButton(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCardRating(BuildContext context) {
    return CustomElevatedButton(
      width: 28.h,
      text: "lbl_4_5".tr,
    );
  }

  /// Section Widget
  Widget _buildProductCardTrackButton(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 53.h,
      text: "lbl_track".tr,
      buttonStyle: CustomButtonStyles.fillIndigoTL7,
      buttonTextStyle: CustomTextStyles.labelSmallGray50,
    );
  }
}
