import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'models/home_page_onlt_products_model.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'provider/home_page_onlt_products_provider.dart';
import 'widgets/viewhierarchy1_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomePageOnltProductsPage extends StatefulWidget {
  const HomePageOnltProductsPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageOnltProductsPageState createState() =>
      HomePageOnltProductsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageOnltProductsProvider(),
      child: HomePageOnltProductsPage(),
    );
  }
}

class HomePageOnltProductsPageState extends State<HomePageOnltProductsPage>
    with AutomaticKeepAliveClientMixin<HomePageOnltProductsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_results".tr,
                      style: CustomTextStyles.titleSmallIndigo90001_1,
                    ),
                    SizedBox(height: 14.v),
                    _buildViewHierarchy(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Consumer<HomePageOnltProductsProvider>(
      builder: (context, provider, child) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 170.v,
            crossAxisCount: 2,
            mainAxisSpacing: 22.h,
            crossAxisSpacing: 22.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider
              .homePageOnltProductsModelObj.viewhierarchy1ItemList.length,
          itemBuilder: (context, index) {
            Viewhierarchy1ItemModel model = provider
                .homePageOnltProductsModelObj.viewhierarchy1ItemList[index];
            return Viewhierarchy1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
