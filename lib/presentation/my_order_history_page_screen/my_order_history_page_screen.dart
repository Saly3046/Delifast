import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/presentation/home_page_client_page/home_page_client_page.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_bottom_bar.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'models/my_order_history_page_model.dart';
import 'provider/my_order_history_page_provider.dart';

class MyOrderHistoryPageScreen extends StatefulWidget {
  const MyOrderHistoryPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrderHistoryPageScreenState createState() =>
      MyOrderHistoryPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyOrderHistoryPageProvider(),
      child: MyOrderHistoryPageScreen(),
    );
  }
}

class MyOrderHistoryPageScreenState extends State<MyOrderHistoryPageScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 18.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "lbl_today_12_00am".tr,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 1.v),
              _buildOrderHistory(context),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_today_12_00am".tr,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 1.v),
              _buildOrderDetails(context),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "lbl_today_12_00am".tr,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 1.v),
              _buildOrderConfirmation(context),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "lbl_today_12_00am".tr,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 1.v),
              _buildOrderSummary(context),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_today_12_00am".tr,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 1.v),
              _buildOrderItem(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 48.h,
          top: 19.v,
          bottom: 22.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_my_order_history".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
    return CustomElevatedButton(
      width: 28.h,
      text: "lbl_4_5".tr,
    );
  }

  /// Section Widget
  Widget _buildOrderHistory(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 3.h,
        right: 2.h,
      ),
      padding: EdgeInsets.all(7.h),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTrenchClassiqu,
            height: 80.v,
            width: 65.h,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 3.v,
              bottom: 1.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 3.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTranchCoat1(
                    context,
                    tranchCoatText: "lbl_tranch_coat".tr,
                    supplierNameText: "lbl_supplier_name".tr,
                    zipcodeText: "lbl_1000".tr,
                    daText: "lbl_da".tr,
                    qtyText: "lbl_qty".tr,
                    threeText: "lbl_3".tr,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Column(
                      children: [
                        _buildFortyFive(context),
                        SizedBox(height: 49.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFavorite,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 5.h),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFive1(BuildContext context) {
    return CustomElevatedButton(
      width: 28.h,
      text: "lbl_4_5".tr,
    );
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 4.h,
        right: 2.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTrenchClassiqu,
            height: 80.v,
            width: 65.h,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 3.v,
              bottom: 1.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_tranch_coat".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      _buildFortyFive1(context),
                    ],
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "lbl_supplier_name".tr,
                    style: theme.textTheme.labelSmall,
                  ),
                  SizedBox(height: 2.v),
                  _buildZipcode(
                    context,
                    zipcode: "lbl_1000".tr,
                    dA: "lbl_da".tr,
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: _buildTelevision(
                      context,
                      qtyText: "lbl_qty".tr,
                      qtyValue: "lbl_3".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFive2(BuildContext context) {
    return CustomElevatedButton(
      width: 28.h,
      text: "lbl_4_5".tr,
      margin: EdgeInsets.only(
        top: 3.v,
        bottom: 9.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderConfirmation(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 4.h,
        right: 1.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTrenchClassiqu,
            height: 80.v,
            width: 65.h,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 3.v,
              bottom: 1.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTranchCoat(
                        context,
                        tranchCoatText: "lbl_tranch_coat".tr,
                        supplierNameText: "lbl_supplier_name".tr,
                      ),
                      _buildFortyFive2(context),
                    ],
                  ),
                  SizedBox(height: 2.v),
                  _buildZipcode(
                    context,
                    zipcode: "lbl_1000".tr,
                    dA: "lbl_da".tr,
                  ),
                  SizedBox(height: 11.v),
                  _buildTelevision(
                    context,
                    qtyText: "lbl_qty".tr,
                    qtyValue: "lbl_3".tr,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFive3(BuildContext context) {
    return CustomElevatedButton(
      width: 28.h,
      text: "lbl_4_5".tr,
      margin: EdgeInsets.only(
        top: 4.v,
        bottom: 8.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderSummary(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 4.h,
        right: 2.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTrenchClassiqu,
            height: 80.v,
            width: 65.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 249.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTranchCoat(
                        context,
                        tranchCoatText: "lbl_tranch_coat".tr,
                        supplierNameText: "lbl_supplier_name".tr,
                      ),
                      _buildFortyFive3(context),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
                _buildZipcode(
                  context,
                  zipcode: "lbl_1000".tr,
                  dA: "lbl_da".tr,
                ),
                SizedBox(height: 11.v),
                _buildTelevision(
                  context,
                  qtyText: "lbl_qty".tr,
                  qtyValue: "lbl_3".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFive4(BuildContext context) {
    return CustomElevatedButton(
      width: 28.h,
      text: "lbl_4_5".tr,
    );
  }

  /// Section Widget
  Widget _buildOrderItem(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.all(7.h),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTrenchClassiqu,
            height: 80.v,
            width: 65.h,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 3.v,
              bottom: 1.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 3.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTranchCoat1(
                    context,
                    tranchCoatText: "lbl_tranch_coat".tr,
                    supplierNameText: "lbl_supplier_name".tr,
                    zipcodeText: "lbl_1000".tr,
                    daText: "lbl_da".tr,
                    qtyText: "lbl_qty".tr,
                    threeText: "lbl_3".tr,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Column(
                      children: [
                        _buildFortyFive4(context),
                        SizedBox(height: 49.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFavorite,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 5.h),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildZipcode(
    BuildContext context, {
    required String zipcode,
    required String dA,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Text(
            zipcode,
            style: CustomTextStyles.labelLargeErrorContainer.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text(
            dA,
            style: CustomTextStyles.labelLargePoppinsRed400.copyWith(
              color: appTheme.red400,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTelevision(
    BuildContext context, {
    required String qtyText,
    required String qtyValue,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
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
            decoration: AppDecoration.outlineIndigo900011.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTelevision,
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
                            qtyText,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: appTheme.indigo90001,
                            ),
                          ),
                        ),
                        Text(
                          qtyValue,
                          style: CustomTextStyles.bodySmallBluegray700.copyWith(
                            color: appTheme.blueGray700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFavorite,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 3.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTranchCoat(
    BuildContext context, {
    required String tranchCoatText,
    required String supplierNameText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tranchCoatText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          supplierNameText,
          style: theme.textTheme.labelSmall!.copyWith(
            color: appTheme.blueGray80001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTranchCoat1(
    BuildContext context, {
    required String tranchCoatText,
    required String supplierNameText,
    required String zipcodeText,
    required String daText,
    required String qtyText,
    required String threeText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tranchCoatText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          supplierNameText,
          style: theme.textTheme.labelSmall!.copyWith(
            color: appTheme.blueGray80001,
          ),
        ),
        SizedBox(height: 2.v),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text(
                zipcodeText,
                style: CustomTextStyles.labelLargeErrorContainer.copyWith(
                  color: theme.colorScheme.errorContainer,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                daText,
                style: CustomTextStyles.labelLargePoppinsRed400.copyWith(
                  color: appTheme.red400,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
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
            decoration: AppDecoration.outlineIndigo90001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTelevision,
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
                            qtyText,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: appTheme.indigo90001,
                            ),
                          ),
                        ),
                        Text(
                          threeText,
                          style: CustomTextStyles.bodySmallBluegray700.copyWith(
                            color: appTheme.blueGray700,
                          ),
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
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Teenyiconshomesolid:
        return AppRoutes.homePageClientPage;
      case BottomBarEnum.Cart:
        return "/";
      case BottomBarEnum.Iconlylightchat:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePageClientPage:
        return HomePageClientPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
