import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'models/page_de_produit_model.dart';
import 'provider/page_de_produit_provider.dart';

class PageDeProduitScreen extends StatefulWidget {
  const PageDeProduitScreen({Key? key}) : super(key: key);

  @override
  PageDeProduitScreenState createState() => PageDeProduitScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PageDeProduitProvider(),
        child: PageDeProduitScreen());
  }
}

class PageDeProduitScreenState extends State<PageDeProduitScreen> {
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
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 47.v),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL20),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildAppBar(context),
                        SizedBox(height: 33.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgTrenchClassiqu,
                            height: 300.v,
                            width: 151.h)
                      ])),
                  _buildBuySection(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 30.v,
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDownBlueGray900,
            margin: EdgeInsets.only(left: 31.h, top: 3.v, bottom: 3.v)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgFavoriteRed400,
              margin: EdgeInsets.symmetric(horizontal: 29.h))
        ]);
  }

  /// Section Widget
  Widget _buildBuySection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 43.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(right: 9.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                              opacity: 0.9,
                              child: Text("lbl_trench_coat".tr,
                                  style: theme.textTheme.headlineMedium)),
                          Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text("lbl_5000da".tr,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .titleMediumMontserratBlack900))
                        ]),
                    CustomElevatedButton(
                        height: 39.v,
                        width: 134.h,
                        text: "lbl_buy".tr,
                        margin: EdgeInsets.only(top: 2.v, bottom: 16.v),
                        buttonStyle: CustomButtonStyles.fillIndigo,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumMontserratWhiteA700,
                        onPressed: () {
                          onTapBUY(context);
                        })
                  ])),
          SizedBox(height: 42.v),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text("lbl_taille".tr,
                                style: CustomTextStyles.titleLargeTeal200)),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h, top: 3.v),
                            child: Text("lbl_38".tr,
                                style: CustomTextStyles
                                    .titleMediumMontserratIndigo90001)),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowDownGray400,
                            height: 8.v,
                            width: 12.h,
                            margin: EdgeInsets.only(
                                left: 8.h, top: 13.v, bottom: 7.v)),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text("lbl_quantity".tr,
                                style: CustomTextStyles.titleLargeTeal200)),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h, top: 2.v),
                            child: Text("lbl_38".tr,
                                style: CustomTextStyles
                                    .titleMediumMontserratIndigo90001)),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowDownGray400,
                            height: 8.v,
                            width: 12.h,
                            margin: EdgeInsets.only(
                                left: 6.h, top: 12.v, bottom: 8.v))
                      ]))),
          SizedBox(height: 26.v),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text("lbl_from".tr,
                  style: CustomTextStyles.titleLargeIndigo9000121)),
          SizedBox(height: 12.v),
          Padding(
              padding: EdgeInsets.only(left: 13.h),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.img83f0bb6c3a84478x82,
                    height: 78.v,
                    width: 82.h,
                    radius: BorderRadius.circular(39.h),
                    margin: EdgeInsets.only(bottom: 3.v),
                    onTap: () {
                      onTapImgFbbca(context);
                    }),
                Padding(
                    padding: EdgeInsets.only(left: 6.h, top: 11.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                onTapTxtBoutiqueTheOne(context);
                              },
                              child: Text("msg_boutique_the_one".tr,
                                  style: CustomTextStyles
                                      .titleMediumMontserratPrimary)),
                          SizedBox(height: 9.v),
                          Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLinkedin,
                                height: 15.v,
                                width: 10.h),
                            Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text("msg_el_3akid_lotfi_oran".tr,
                                    style: CustomTextStyles.labelLargeBlack900))
                          ]),
                          SizedBox(height: 9.v),
                          Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSignal,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.only(bottom: 3.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text("lbl_4_7".tr,
                                    style: CustomTextStyles.labelLargeBlack900))
                          ])
                        ]))
              ])),
          SizedBox(height: 77.v)
        ]));
  }

  /// Navigates to the checkoutScreen when the action is triggered.
  onTapBUY(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkoutScreen,
    );
  }

  /// Navigates to the pageDeSupplierScreen when the action is triggered.
  onTapImgFbbca(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageDeSupplierScreen,
    );
  }

  /// Navigates to the pageDeSupplierScreen when the action is triggered.
  onTapTxtBoutiqueTheOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pageDeSupplierScreen,
    );
  }
}
