import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 56.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgShadow:
        return Container(
          height: 82.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.1),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  1,
                ),
              ),
            ],
          ),
        );
      case Style.bgShadow_1:
        return Container(
          height: 107.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.blueGray100.withOpacity(0.1),
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.11),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgShadow,
  bgShadow_1,
}
