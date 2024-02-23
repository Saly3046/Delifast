import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import '../models/homepageclientlist_item_model.dart';

// ignore: must_be_immutable
class HomepageclientlistItemWidget extends StatelessWidget {
  HomepageclientlistItemWidget(
    this.homepageclientlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomepageclientlistItemModel homepageclientlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 166.h,
      child: CustomImageView(
        imagePath: homepageclientlistItemModelObj?.fbbca,
        height: 109.v,
        width: 166.h,
        radius: BorderRadius.vertical(
          top: Radius.circular(10.h),
        ),
        margin: EdgeInsets.only(bottom: 62.v),
      ),
    );
  }
}
