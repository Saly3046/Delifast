import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import '../models/ellipselist_item_model.dart';

// ignore: must_be_immutable
class EllipselistItemWidget extends StatelessWidget {
  EllipselistItemWidget(
    this.ellipselistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EllipselistItemModel ellipselistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52.h,
      child: CustomImageView(
        imagePath: ellipselistItemModelObj?.ellipse,
        height: 49.v,
        width: 52.h,
        radius: BorderRadius.circular(
          26.h,
        ),
      ),
    );
  }
}
