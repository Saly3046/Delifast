import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/presentation/home_page_client_page/home_page_client_page.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/appbar_title.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_bottom_bar.dart';
import 'models/order_history_page_model.dart';
import 'models/productcard_item_model.dart';
import 'provider/order_history_page_provider.dart';
import 'widgets/productcard_item_widget.dart';

class OrderHistoryPageScreen extends StatefulWidget {
  const OrderHistoryPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OrderHistoryPageScreenState createState() => OrderHistoryPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrderHistoryPageProvider(),
      child: OrderHistoryPageScreen(),
    );
  }
}

class OrderHistoryPageScreenState extends State<OrderHistoryPageScreen> {
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
            vertical: 9.v,
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
              _buildProductCard(context),
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
          top: 11.v,
          bottom: 30.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_order_history".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Consumer<OrderHistoryPageProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 18.v,
              );
            },
            itemCount:
                provider.orderHistoryPageModelObj.productcardItemList.length,
            itemBuilder: (context, index) {
              ProductcardItemModel model =
                  provider.orderHistoryPageModelObj.productcardItemList[index];
              return ProductcardItemWidget(
                model,
              );
            },
          );
        },
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
