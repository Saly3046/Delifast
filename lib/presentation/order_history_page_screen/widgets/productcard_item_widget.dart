import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import '../models/productcard_item_model.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: productcardItemModelObj?.image,
            height: 80.v,
            width: 65.h,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 4.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productcardItemModelObj.title!,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 2.v),
                Text(
                  productcardItemModelObj.supplierName!,
                  style: theme.textTheme.labelSmall,
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      child: Text(
                        productcardItemModelObj.price!,
                        style: CustomTextStyles.labelLargeErrorContainer,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        productcardItemModelObj.currency!,
                        style: CustomTextStyles.labelLargePoppinsRed400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: appTheme.teal200,
                      width: 1.h,
                    ),
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Container(
                    height: 20.v,
                    width: 51.h,
                    padding: EdgeInsets.symmetric(horizontal: 1.h),
                    decoration: AppDecoration.outlineTeal.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder2,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: productcardItemModelObj?.image1,
                          height: 18.v,
                          width: 25.h,
                          alignment: Alignment.centerLeft,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 36.h,
                            margin: EdgeInsets.fromLTRB(5.h, 3.v, 6.h, 1.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(
                                    productcardItemModelObj.label!,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Text(
                                  productcardItemModelObj.quantity!,
                                  style: CustomTextStyles.bodySmallBluegray700,
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
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 47.v),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 15.v,
                      width: 28.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100.withOpacity(0.44),
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: productcardItemModelObj?.rating,
                      height: 7.adaptSize,
                      width: 7.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 4.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        productcardItemModelObj.ratingText!,
                        style: CustomTextStyles.montserratBlack900,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.v),
                CustomImageView(
                  imagePath: productcardItemModelObj?.favorite,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 11.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
