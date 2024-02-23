import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/appbar_title_button.dart';
import 'package:creavexes3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_search_view.dart';
import 'models/home_page_client_model.dart';
import 'models/homepageclientlist_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'provider/home_page_client_provider.dart';
import 'widgets/homepageclientlist_item_widget.dart';
import 'widgets/viewhierarchy_item_widget.dart';

class HomePageClientPage extends StatefulWidget {
  const HomePageClientPage({Key? key}) : super(key: key);

  @override
  HomePageClientPageState createState() => HomePageClientPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomePageClientProvider(),
        child: HomePageClientPage());
  }
}

class HomePageClientPageState extends State<HomePageClientPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 36.h, right: 35.h),
                          child: Selector<HomePageClientProvider,
                                  TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.searchController,
                              builder: (context, searchController, child) {
                                return CustomSearchView(
                                    controller: searchController,
                                    hintText: "lbl_search".tr);
                              })),
                      SizedBox(height: 29.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 29.h),
                              child: Text("lbl_categories".tr,
                                  style:
                                      CustomTextStyles.titleSmallIndigo90001))),
                      SizedBox(height: 10.v),
                      _buildCosmethiqueRow(context),
                      SizedBox(height: 16.v),
                      _buildOurSuppliersRow(context),
                      SizedBox(height: 10.v),
                      _buildHomePageClientList(context),
                      SizedBox(height: 13.v),
                      _buildOurProductsRow(context),
                      SizedBox(height: 8.v),
                      _buildViewHierarchy(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgTelevisionIndigo90001,
            margin: EdgeInsets.only(left: 30.h, top: 15.v, bottom: 26.v)),
        title: AppbarTitleButton(margin: EdgeInsets.only(left: 150.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgVector,
              margin: EdgeInsets.fromLTRB(18.h, 13.v, 30.h, 18.v),
              onTap: () {
                onTapVector(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildCosmethiqueButton(BuildContext context) {
    return CustomElevatedButton(
        height: 22.v,
        width: 98.h,
        text: "lbl_cosmethique".tr,
        margin: EdgeInsets.only(left: 10.h),
        buttonStyle: CustomButtonStyles.fillOnErrorContainer,
        buttonTextStyle: CustomTextStyles.labelMediumIndigo900);
  }

  /// Section Widget
  Widget _buildCosmethiqueRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 29.h),
            child: IntrinsicWidth(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                  height: 22.v,
                  width: 98.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 4.v),
                            decoration: AppDecoration.fillOnErrorContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5),
                            child: Text("lbl_cosmethique".tr,
                                style: CustomTextStyles.labelMediumIndigo900))),
                    Align(
                        alignment: Alignment.center,
                        child: Text("lbl_cosmethique".tr,
                            style: CustomTextStyles.labelMediumIndigo900))
                  ])),
              _buildCosmethiqueButton(context),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: _buildNinetyThreeStack(context,
                      text1: "lbl_cosmethique".tr,
                      text2: "lbl_cosmethique".tr)),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: _buildNinetyThreeStack(context,
                      text1: "lbl_cosmethique".tr, text2: "lbl_cosmethique".tr))
            ]))));
  }

  /// Section Widget
  Widget _buildOurSuppliersRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_our_suppliers".tr,
              style: CustomTextStyles.titleSmallIndigo90001),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Text("lbl_see_more".tr,
                  style: CustomTextStyles.labelMediumIndigo90001))
        ]));
  }

  /// Section Widget
  Widget _buildHomePageClientList(BuildContext context) {
    return SizedBox(
        height: 171.v,
        child: Consumer<HomePageClientProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              padding: EdgeInsets.only(left: 29.h, right: 26.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 1.h);
              },
              itemCount: provider
                  .homePageClientModelObj.homepageclientlistItemList.length,
              itemBuilder: (context, index) {
                HomepageclientlistItemModel model = provider
                    .homePageClientModelObj.homepageclientlistItemList[index];
                return HomepageclientlistItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildOurProductsRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 35.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_our_products".tr,
              style: CustomTextStyles.titleSmallPoppinsIndigo90001),
          GestureDetector(
              onTap: () {
                onTapTxtSeeMore(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 2.v),
                  child: Text("lbl_see_more".tr,
                      style: CustomTextStyles.labelMediumIndigo90001)))
        ]));
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 25.h),
        child: Consumer<HomePageClientProvider>(
            builder: (context, provider, child) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 170.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 22.h,
                  crossAxisSpacing: 22.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  provider.homePageClientModelObj.viewhierarchyItemList.length,
              itemBuilder: (context, index) {
                ViewhierarchyItemModel model = provider
                    .homePageClientModelObj.viewhierarchyItemList[index];
                return ViewhierarchyItemWidget(model, onTapViewHierarchy: () {
                  onTapViewHierarchy(context);
                });
              });
        }));
  }

  /// Common widget
  Widget _buildNinetyThreeStack(
    BuildContext context, {
    required String text1,
    required String text2,
  }) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.onErrorContainer.withOpacity(0.28),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Container(
            height: 22.v,
            width: 98.h,
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 4.v),
            decoration: AppDecoration.fillOnErrorContainer1
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Text(text1,
                      textAlign: TextAlign.justify,
                      style: CustomTextStyles.labelMediumIndigo900
                          .copyWith(color: appTheme.indigo900))),
              Align(
                  alignment: Alignment.center,
                  child: Text(text2,
                      textAlign: TextAlign.justify,
                      style: CustomTextStyles.labelMediumIndigo900
                          .copyWith(color: appTheme.indigo900)))
            ])));
  }

  /// Navigates to the pageDeProduitScreen when the action is triggered.
  onTapViewHierarchy(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.pageDeProduitScreen);
  }

  /// Navigates to the notificationPageForClientScreen when the action is triggered.
  onTapVector(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationPageForClientScreen,
    );
  }

  /// Navigates to the homePageOnltProductsTabContainerScreen when the action is triggered.
  onTapTxtSeeMore(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageOnltProductsTabContainerScreen,
    );
  }
}
