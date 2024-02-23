import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_rating_bar.dart';
import 'models/profile_client_pov_interne_model.dart';
import 'provider/profile_client_pov_interne_provider.dart';

class ProfileClientPovInterneScreen extends StatefulWidget {
  const ProfileClientPovInterneScreen({Key? key}) : super(key: key);

  @override
  ProfileClientPovInterneScreenState createState() =>
      ProfileClientPovInterneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileClientPovInterneProvider(),
        child: ProfileClientPovInterneScreen());
  }
}

class ProfileClientPovInterneScreenState
    extends State<ProfileClientPovInterneScreen> {
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
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle5650,
                      height: 90.adaptSize,
                      width: 90.adaptSize,
                      radius: BorderRadius.circular(43.h)),
                  SizedBox(height: 6.v),
                  Text("lbl_mohamed_amine".tr,
                      style: CustomTextStyles.titleMediumInterIndigo900),
                  SizedBox(height: 4.v),
                  Text("lbl_la_md_esi_dz".tr,
                      style: CustomTextStyles.bodySmallIndigo900),
                  SizedBox(height: 3.v),
                  CustomRatingBar(
                      initialRating: 5,
                      itemSize: 17,
                      color: appTheme.deepOrange200),
                  SizedBox(height: 30.v),
                  _buildMyInformationRow(context),
                  SizedBox(height: 8.v),
                  _buildMyAddressesRow(context),
                  SizedBox(height: 8.v),
                  _buildSettingsRow(context),
                  SizedBox(height: 8.v),
                  _buildFavoritesRow(context),
                  SizedBox(height: 8.v),
                  _buildHistoryColumn(context),
                  Spacer(),
                  SizedBox(height: 66.v),
                  CustomElevatedButton(
                      height: 56.v,
                      text: "lbl_log_out".tr,
                      margin: EdgeInsets.only(left: 40.h, right: 37.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: theme.textTheme.titleLarge!)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 82.v,
        leadingWidth: 47.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 28.h, top: 36.v, bottom: 30.v)),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_profile".tr),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildMyInformationRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.v),
        decoration: AppDecoration.outlineIndigo9001,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 7.v, bottom: 8.v)),
          Padding(
              padding: EdgeInsets.only(left: 22.h, bottom: 5.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_my_information".tr,
                        style: CustomTextStyles.titleSmallInter),
                    SizedBox(height: 3.v),
                    Text("msg_50_full_profile".tr,
                        style: CustomTextStyles.bodySmallInterBlack900)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildMyAddressesRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 11.v),
        decoration: AppDecoration.outlineIndigo9001,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgLocation,
              height: 19.adaptSize,
              width: 19.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 7.v)),
          Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_my_adresses".tr,
                        style: CustomTextStyles.titleSmallInter),
                    Text("lbl_home_work".tr,
                        style: CustomTextStyles.bodySmallInterBlack900)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildSettingsRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.outlineIndigo9001,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgSearch,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 1.v)),
          Padding(
              padding: EdgeInsets.only(left: 21.h, top: 4.v),
              child: Text("lbl_settings".tr,
                  style: CustomTextStyles.titleSmallInter))
        ]));
  }

  /// Section Widget
  Widget _buildFavoritesRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v),
        decoration: AppDecoration.outlineIndigo9001,
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgTelevisionWhiteA700,
              height: 18.v,
              width: 19.h,
              margin: EdgeInsets.only(top: 5.v)),
          Padding(
              padding: EdgeInsets.only(left: 23.h, top: 3.v),
              child: Text("lbl_favorites".tr,
                  style: CustomTextStyles.titleSmallInter))
        ]));
  }

  /// Section Widget
  Widget _buildHistoryColumn(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapHistoryColumn(context);
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 60.h, vertical: 15.v),
            decoration: AppDecoration.outlineIndigo9001,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6.v),
                  Text("lbl_history".tr,
                      style: CustomTextStyles.titleSmallInter)
                ])));
  }

  /// Navigates to the orderHistoryPageScreen when the action is triggered.
  onTapHistoryColumn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.orderHistoryPageScreen,
    );
  }
}
