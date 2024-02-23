import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/presentation/home_page_client_page/home_page_client_page.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_bottom_bar.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'models/chat_model.dart';
import 'models/ellipselist_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'provider/chat_provider.dart';
import 'widgets/ellipselist_item_widget.dart';
import 'widgets/userprofilelist_item_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChatScreenState createState() => ChatScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatProvider(),
      child: ChatScreen(),
    );
  }
}

class ChatScreenState extends State<ChatScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAiAssistantRow(context),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Text(
                  "lbl_online".tr,
                  style: CustomTextStyles.titleMediumPoppinsIndigo900,
                ),
              ),
              SizedBox(height: 14.v),
              _buildEllipseList(context),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Text(
                  "lbl_recent_chats".tr,
                  style: CustomTextStyles.titleMediumPoppinsIndigo900,
                ),
              ),
              SizedBox(height: 11.v),
              _buildUserProfileList(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: 29.h,
            right: 26.h,
          ),
          child: _buildBottomBar(context),
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
  Widget _buildAiAssistantRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_chat".tr,
            style: CustomTextStyles.displayMediumPoppinsIndigo900,
          ),
          CustomElevatedButton(
            height: 43.v,
            width: 142.h,
            text: "lbl_ai_assistant".tr,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 10.v,
            ),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFreepikcharacterinject69,
                height: 24.v,
                width: 30.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: CustomTextStyles.labelLargeIndigo900SemiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEllipseList(BuildContext context) {
    return SizedBox(
      height: 49.v,
      child: Consumer<ChatProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(
              left: 12.h,
              right: 166.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 17.h,
              );
            },
            itemCount: provider.chatModelObj.ellipselistItemList.length,
            itemBuilder: (context, index) {
              EllipselistItemModel model =
                  provider.chatModelObj.ellipselistItemList[index];
              return EllipselistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 5.h,
      ),
      child: Consumer<ChatProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 7.0.v),
                child: SizedBox(
                  width: 327.h,
                  child: Divider(
                    height: 2.v,
                    thickness: 2.v,
                    color: appTheme.indigo900,
                  ),
                ),
              );
            },
            itemCount: provider.chatModelObj.userprofilelistItemList.length,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model =
                  provider.chatModelObj.userprofilelistItemList[index];
              return UserprofilelistItemWidget(
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
