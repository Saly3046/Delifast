import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/presentation/home_page_client_page/home_page_client_page.dart';
import 'package:creavexes3/widgets/custom_bottom_bar.dart';
import 'package:creavexes3/widgets/custom_rating_bar.dart';
import 'models/iphone_11_pro_max_eleven_model.dart';
import 'provider/iphone_11_pro_max_eleven_provider.dart';

class Iphone11ProMaxElevenScreen extends StatefulWidget {
  const Iphone11ProMaxElevenScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxElevenScreenState createState() =>
      Iphone11ProMaxElevenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxElevenProvider(),
        child: Iphone11ProMaxElevenScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone11ProMaxElevenScreenState
    extends State<Iphone11ProMaxElevenScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50.withOpacity(0.98),
            body: Container(
                height: 732.v,
                width: 413.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgNavigationWidow),
                        fit: BoxFit.cover)),
                child: Stack(alignment: Alignment.topCenter, children: [
                  _buildNinetyOne(context),
                  CustomImageView(
                      imagePath: ImageConstant.imgTracking,
                      height: 400.v,
                      width: 253.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 16.v)),
                  _buildView(context)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 30.h, right: 25.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildNinetyOne(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 38.h, top: 149.v, right: 23.h),
            padding: EdgeInsets.symmetric(horizontal: 125.h, vertical: 15.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgGroup91),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 326.v),
                  Divider(color: theme.colorScheme.primary, endIndent: 14.h)
                ])));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: 250.v,
            width: 413.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 250.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: appTheme.gray50,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(35.h))))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 47.h, top: 15.v, right: 41.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("msg_estimated_delivery".tr,
                            style: CustomTextStyles.labelLargeErrorContainer),
                        SizedBox(height: 10.v),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_13".tr,
                                  style: CustomTextStyles.labelLargeff1f272d),
                              TextSpan(
                                  text: "lbl2".tr,
                                  style: CustomTextStyles.labelLargeff1f272d),
                              TextSpan(
                                  text: "lbl_15_pm".tr,
                                  style: CustomTextStyles.labelLargeff1f272d)
                            ]),
                            textAlign: TextAlign.left),
                        SizedBox(height: 13.v),
                        Text("lbl_to".tr,
                            style: CustomTextStyles.labelLargeSemiBold),
                        SizedBox(height: 14.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 52.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgLinkedinTeal200,
                                      height: 18.v,
                                      width: 12.h),
                                  Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("msg_wisteria_sr_30".tr,
                                          style: theme.textTheme.labelLarge))
                                ]))),
                        SizedBox(height: 19.v),
                        GestureDetector(
                            onTap: () {
                              onTapNinety(context);
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 13.v),
                                decoration: AppDecoration.outlineIndigo900
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse187,
                                          height: 54.adaptSize,
                                          width: 54.adaptSize,
                                          radius: BorderRadius.circular(27.h),
                                          margin: EdgeInsets.only(
                                              left: 4.h, bottom: 3.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 16.h,
                                              top: 2.v,
                                              bottom: 3.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h),
                                                    child: Text(
                                                        "lbl_your_deliver".tr,
                                                        style: CustomTextStyles
                                                            .labelSmallBluegray700)),
                                                SizedBox(height: 3.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h),
                                                    child: Text(
                                                        "lbl_mohamed".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallErrorContainer)),
                                                SizedBox(height: 4.v),
                                                Row(children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 2.v),
                                                      child: CustomRatingBar(
                                                          initialRating: 5)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.h),
                                                      child: Text("lbl_4_6".tr,
                                                          style: CustomTextStyles
                                                              .labelMediumErrorContainerMedium))
                                                ])
                                              ])),
                                      Spacer(),
                                      Container(
                                          height: 21.v,
                                          width: 24.h,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 18.v),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4.h, vertical: 3.v),
                                          decoration: AppDecoration
                                              .outlineIndigo900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgUser,
                                              height: 12.adaptSize,
                                              width: 12.adaptSize,
                                              alignment:
                                                  Alignment.bottomCenter)),
                                      Container(
                                          height: 21.v,
                                          width: 24.h,
                                          margin: EdgeInsets.only(
                                              left: 5.h,
                                              top: 18.v,
                                              bottom: 18.v),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.h, vertical: 3.v),
                                          decoration: AppDecoration
                                              .outlineIndigo900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgCall,
                                              height: 10.adaptSize,
                                              width: 10.adaptSize,
                                              alignment: Alignment.topLeft))
                                    ])))
                      ])))
            ])));
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

  /// Navigates to the profilePovVisitorScreen when the action is triggered.
  onTapNinety(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePovVisitorScreen,
    );
  }
}
