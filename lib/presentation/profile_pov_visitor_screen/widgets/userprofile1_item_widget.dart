import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import '../models/userprofile1_item_model.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse18,
                height: 57.adaptSize,
                width: 57.adaptSize,
                radius: BorderRadius.circular(
                  28.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 230.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            userprofile1ItemModelObj.userName!,
                            style: theme.textTheme.titleSmall,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 4.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              userprofile1ItemModelObj.timeAgo!,
                              style: CustomTextStyles.labelSmallIndigo900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    SizedBox(
                      width: 229.h,
                      child: Text(
                        userprofile1ItemModelObj.message!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        style: CustomTextStyles.labelSmallIndigo900_1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 58.h),
          child: SizedBox(
            height: 57.v,
            child: VerticalDivider(
              width: 3.h,
              thickness: 3.v,
              color: theme.colorScheme.primary.withOpacity(0.7),
              indent: 15.h,
              endIndent: 3.h,
            ),
          ),
        ),
      ],
    );
  }
}
