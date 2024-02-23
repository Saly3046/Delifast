import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/presentation/home_page_client_page/home_page_client_page.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_bottom_bar.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'models/ellipse_item_model.dart';
import 'models/page_de_supplier_model.dart';
import 'models/userprofilelist2_item_model.dart';
import 'provider/page_de_supplier_provider.dart';
import 'widgets/ellipse_item_widget.dart';
import 'widgets/userprofilelist2_item_widget.dart';

class PageDeSupplierScreen extends StatefulWidget {
  const PageDeSupplierScreen({Key? key}) : super(key: key);

  @override
  PageDeSupplierScreenState createState() => PageDeSupplierScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PageDeSupplierProvider(),
        child: PageDeSupplierScreen());
  }
}

// ignore_for_file: must_be_immutable
class PageDeSupplierScreenState extends State<PageDeSupplierScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFrameEightyFive(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.h, vertical: 26.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildMessageRow(context),
                            SizedBox(height: 4.v),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLinkedin,
                                      height: 16.v,
                                      width: 14.h,
                                      margin: EdgeInsets.only(top: 3.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text("msg_el_3akid_lotfi_oran".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimary))
                                ])),
                            SizedBox(height: 7.v),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCallOnerrorcontainer,
                                      height: 14.adaptSize,
                                      width: 14.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text("lbl_066544586522".tr,
                                          style: CustomTextStyles
                                              .labelLargeOnPrimary))
                                ])),
                            SizedBox(height: 6.v),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgVectorOnerrorcontainer,
                                      height: 11.v,
                                      width: 15.h,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 2.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("lbl_lm_remil_esi_dz".tr,
                                          style: CustomTextStyles
                                              .labelLargeOnPrimary))
                                ])),
                            SizedBox(height: 18.v),
                            _buildReviewsStack(context),
                            SizedBox(height: 11.v),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("lbl_our_products".tr,
                                    style: CustomTextStyles
                                        .titleSmallIndigo90001_1)),
                            SizedBox(height: 19.v),
                            _buildUserProfileList(context)
                          ]))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildFrameEightyFive(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.blueGray100.withOpacity(0.31),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.customBorderTL20),
        child: Container(
            height: 336.v,
            width: double.maxFinite,
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.img83f0bb6c3a844336x414,
                  height: 336.v,
                  width: 414.h,
                  radius: BorderRadius.vertical(top: Radius.circular(20.h)),
                  alignment: Alignment.center),
              CustomAppBar(
                  height: 70.v,
                  leadingWidth: 54.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowDownIndigo90001,
                      margin: EdgeInsets.only(left: 27.h, bottom: 13.v)),
                  actions: [
                    AppbarTrailingIconbutton(
                        imagePath: ImageConstant.imgFavoriteRed400,
                        margin: EdgeInsets.symmetric(horizontal: 22.h))
                  ])
            ])));
  }

  /// Section Widget
  Widget _buildMessageRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Opacity(
              opacity: 0.9,
              child: Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 1.v),
                  child: Text("lbl_boutique_maha".tr,
                      style: theme.textTheme.headlineMedium))),
          CustomElevatedButton(
              height: 40.v,
              width: 120.h,
              text: "lbl_message".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgUserPrimary,
                      height: 20.adaptSize,
                      width: 20.adaptSize)),
              buttonStyle: CustomButtonStyles.fillWhiteATL10,
              buttonTextStyle: CustomTextStyles.titleSmallPoppinsGray600,
              onPressed: () {
                onTapMessage(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildReviewsStack(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 73.v,
            width: 358.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("lbl_reviews".tr,
                      style: CustomTextStyles.titleSmallIndigo90001_1)),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text("lbl_view_all".tr,
                                    style: CustomTextStyles
                                        .bodyMediumMontserratIndigo90001)),
                            SizedBox(height: 3.v),
                            SizedBox(
                                height: 43.v,
                                child: Consumer<PageDeSupplierProvider>(
                                    builder: (context, provider, child) {
                                  return ListView.separated(
                                      padding: EdgeInsets.only(right: 138.h),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(width: 14.h);
                                      },
                                      itemCount: provider.pageDeSupplierModelObj
                                          .ellipseItemList.length,
                                      itemBuilder: (context, index) {
                                        EllipseItemModel model = provider
                                            .pageDeSupplierModelObj
                                            .ellipseItemList[index];
                                        return EllipseItemWidget(model);
                                      });
                                }))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 170.v,
            child: Consumer<PageDeSupplierProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 22.h);
                  },
                  itemCount: provider
                      .pageDeSupplierModelObj.userprofilelist2ItemList.length,
                  itemBuilder: (context, index) {
                    Userprofilelist2ItemModel model = provider
                        .pageDeSupplierModelObj.userprofilelist2ItemList[index];
                    return Userprofilelist2ItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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

  /// Navigates to the chatoneScreen when the action is triggered.
  onTapMessage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatoneScreen,
    );
  }
}
