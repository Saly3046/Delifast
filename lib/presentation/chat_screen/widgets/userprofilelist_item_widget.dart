import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9002,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55.adaptSize,
                  width: 55.adaptSize,
                  margin: EdgeInsets.only(top: 1.v),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(
                      27.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 4.v,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          userprofilelistItemModelObj.userName!,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        userprofilelistItemModelObj.okayText!,
                        style: CustomTextStyles.labelLargeIndigo900Medium,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 35.v,
                  ),
                  child: Text(
                    userprofilelistItemModelObj.timeText!,
                    style: CustomTextStyles.labelLargeIndigo900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 55.v,
                  width: 53.h,
                  margin: EdgeInsets.only(top: 1.v),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 55.v,
                          width: 53.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            borderRadius: BorderRadius.circular(
                              27.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCloseTeal100,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        alignment: Alignment.topRight,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 4.v,
                    bottom: 9.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userprofilelistItemModelObj.userName1!,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        userprofilelistItemModelObj.greetingText!,
                        style: CustomTextStyles.labelLargeIndigo900Medium,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    right: 2.h,
                    bottom: 35.v,
                  ),
                  child: Text(
                    userprofilelistItemModelObj.timeText1!,
                    style: CustomTextStyles.labelLargeIndigo900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }
}
