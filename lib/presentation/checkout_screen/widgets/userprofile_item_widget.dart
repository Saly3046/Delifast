import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/custom_icon_button.dart';
import '../models/userprofile_item_model.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 11.v,
            bottom: 29.v,
          ),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.outlineIndigo90001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Container(
            height: 7.adaptSize,
            width: 7.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.indigo90001,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            bottom: 15.v,
          ),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(11.h),
            decoration: IconButtonStyleHelper.fillIndigoTL10,
            child: CustomImageView(
              imagePath: userprofileItemModelObj?.iconButton,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 13.v,
            bottom: 20.v,
          ),
          child: Text(
            userprofileItemModelObj.creditCardText!,
            style: CustomTextStyles.titleMediumMontserratIndigo90001Medium,
          ),
        ),
      ],
    );
  }
}
