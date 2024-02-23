import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'models/profile_pov_visitor_model.dart';
import 'models/userprofile1_item_model.dart';
import 'provider/profile_pov_visitor_provider.dart';
import 'widgets/userprofile1_item_widget.dart';

class ProfilePovVisitorScreen extends StatefulWidget {
  const ProfilePovVisitorScreen({Key? key}) : super(key: key);

  @override
  ProfilePovVisitorScreenState createState() => ProfilePovVisitorScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfilePovVisitorProvider(),
        child: ProfilePovVisitorScreen());
  }
}

class ProfilePovVisitorScreenState extends State<ProfilePovVisitorScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 5.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse23,
                          height: 116.adaptSize,
                          width: 116.adaptSize,
                          radius: BorderRadius.circular(58.h),
                          alignment: Alignment.center),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 87.h),
                          child: Text("lbl_mohamed_amine".tr,
                              style: CustomTextStyles.titleLargeIndigo900)),
                      SizedBox(height: 17.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame85,
                          height: 14.v,
                          width: 54.h,
                          alignment: Alignment.center),
                      SizedBox(height: 21.v),
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomElevatedButton(
                                    height: 40.v,
                                    width: 120.h,
                                    text: "lbl_message".tr,
                                    leftIcon: Container(
                                        margin: EdgeInsets.only(right: 8.h),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgUserPrimary,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize)),
                                    buttonStyle:
                                        CustomButtonStyles.fillWhiteATL10,
                                    buttonTextStyle: CustomTextStyles
                                        .titleSmallPoppinsGray600,
                                    onPressed: () {
                                      onTapMessage(context);
                                    }),
                                CustomElevatedButton(
                                    height: 40.v,
                                    width: 104.h,
                                    text: "lbl_follow".tr,
                                    margin: EdgeInsets.only(left: 14.h),
                                    buttonStyle: CustomButtonStyles.fillPrimary,
                                    buttonTextStyle: CustomTextStyles
                                        .titleSmallPoppinsWhiteA700)
                              ])),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("lbl_email".tr,
                              style: CustomTextStyles
                                  .titleMediumMontserratIndigo900)),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("lbl_la_md_esi_dz".tr,
                              style: CustomTextStyles
                                  .labelLargeIndigo900Medium_2)),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("lbl_phone".tr,
                              style: CustomTextStyles
                                  .titleMediumMontserratIndigo900)),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("lbl_none".tr,
                              style: CustomTextStyles
                                  .labelLargeIndigo900Medium_2)),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("lbl_reviews".tr,
                              style: CustomTextStyles
                                  .titleMediumMontserratIndigo900)),
                      SizedBox(height: 4.v),
                      _buildUserProfile(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(29.h, 19.v, 366.h, 20.v)));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 7.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        decoration: AppDecoration.fillTeal10047
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Consumer<ProfilePovVisitorProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10.v);
              },
              itemCount: provider
                  .profilePovVisitorModelObj.userprofile1ItemList.length,
              itemBuilder: (context, index) {
                Userprofile1ItemModel model = provider
                    .profilePovVisitorModelObj.userprofile1ItemList[index];
                return Userprofile1ItemWidget(model);
              });
        }));
  }

  /// Navigates to the chatthreeScreen when the action is triggered.
  onTapMessage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatthreeScreen,
    );
  }
}
