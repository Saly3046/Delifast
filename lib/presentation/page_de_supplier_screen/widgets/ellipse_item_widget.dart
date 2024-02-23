import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import '../models/ellipse_item_model.dart';

// ignore: must_be_immutable
class EllipseItemWidget extends StatelessWidget {
  EllipseItemWidget(
    this.ellipseItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EllipseItemModel ellipseItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 43.h,
      child: CustomImageView(
        imagePath: ellipseItemModelObj?.ellipse,
        height: 43.adaptSize,
        width: 43.adaptSize,
        radius: BorderRadius.circular(
          21.h,
        ),
      ),
    );
  }
}
