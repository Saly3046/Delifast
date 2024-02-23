import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'models/notification_page_for_client_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'provider/notification_page_for_client_provider.dart';
import 'widgets/userprofilelist1_item_widget.dart';

class NotificationPageForClientScreen extends StatefulWidget {
  const NotificationPageForClientScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationPageForClientScreenState createState() =>
      NotificationPageForClientScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationPageForClientProvider(),
      child: NotificationPageForClientScreen(),
    );
  }
}

class NotificationPageForClientScreenState
    extends State<NotificationPageForClientScreen> {
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
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              Text(
                "lbl_notifications".tr,
                style: CustomTextStyles.titleLargePoppinsIndigo90001,
              ),
              SizedBox(height: 71.v),
              _buildUserProfileList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownBlueGray900,
        margin: EdgeInsets.fromLTRB(31.h, 15.v, 356.h, 16.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Consumer<NotificationPageForClientProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 36.v,
            );
          },
          itemCount: provider.notificationPageForClientModelObj
              .userprofilelist1ItemList.length,
          itemBuilder: (context, index) {
            Userprofilelist1ItemModel model = provider
                .notificationPageForClientModelObj
                .userprofilelist1ItemList[index];
            return Userprofilelist1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
