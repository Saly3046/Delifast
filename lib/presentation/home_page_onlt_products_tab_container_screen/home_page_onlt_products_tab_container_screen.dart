import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/presentation/home_page_onlt_products_page/home_page_onlt_products_page.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/appbar_title_button.dart';
import 'package:creavexes3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_search_view.dart';
import 'models/home_page_onlt_products_tab_container_model.dart';
import 'provider/home_page_onlt_products_tab_container_provider.dart';

class HomePageOnltProductsTabContainerScreen extends StatefulWidget {
  const HomePageOnltProductsTabContainerScreen({Key? key}) : super(key: key);

  @override
  HomePageOnltProductsTabContainerScreenState createState() =>
      HomePageOnltProductsTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomePageOnltProductsTabContainerProvider(),
        child: HomePageOnltProductsTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomePageOnltProductsTabContainerScreenState
    extends State<HomePageOnltProductsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 36.h, right: 35.h),
                              child: Selector<
                                      HomePageOnltProductsTabContainerProvider,
                                      TextEditingController?>(
                                  selector: (context, provider) =>
                                      provider.searchController,
                                  builder: (context, searchController, child) {
                                    return CustomSearchView(
                                        controller: searchController,
                                        hintText: "lbl_search".tr,
                                        hintStyle: CustomTextStyles
                                            .titleSmallIndigo900,
                                        alignment: Alignment.center,
                                        contentPadding: EdgeInsets.only(
                                            top: 9.v,
                                            right: 30.h,
                                            bottom: 9.v));
                                  }))),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("lbl_filtres".tr,
                              style: CustomTextStyles.titleSmallIndigo90001_1)),
                      SizedBox(height: 11.v),
                      _buildTabview(context),
                      SizedBox(
                          height: 693.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                HomePageOnltProductsPage.builder(context),
                                HomePageOnltProductsPage.builder(context),
                                HomePageOnltProductsPage.builder(context),
                                HomePageOnltProductsPage.builder(context),
                                HomePageOnltProductsPage.builder(context),
                                HomePageOnltProductsPage.builder(context),
                                HomePageOnltProductsPage.builder(context)
                              ]))
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
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 22.v,
        width: 385.h,
        child: TabBar(controller: tabviewController, isScrollable: true, tabs: [
          Tab(child: Text("lbl_cosmethique".tr)),
          Tab(child: Text("lbl_cosmethique".tr)),
          Tab(child: Text("lbl_cosmethique".tr)),
          Tab(child: Text("lbl_cosmethique".tr)),
          Tab(child: Text("lbl_cosmethique".tr)),
          Tab(child: Text("lbl_cosmethique".tr)),
          Tab(child: Text("lbl_cosmethique".tr))
        ]));
  }

  /// Navigates to the notificationPageForClientScreen when the action is triggered.
  onTapVector(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationPageForClientScreen,
    );
  }
}
