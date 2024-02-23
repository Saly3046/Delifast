import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/appbar_subtitle.dart';
import 'package:creavexes3/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:creavexes3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_text_form_field.dart';
import 'models/chatone_model.dart';
import 'provider/chatone_provider.dart';

class ChatoneScreen extends StatefulWidget {
  const ChatoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChatoneScreenState createState() => ChatoneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatoneProvider(),
      child: ChatoneScreen(),
    );
  }
}

class ChatoneScreenState extends State<ChatoneScreen> {
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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 69.v),
              SizedBox(
                width: 136.h,
                child: Text(
                  "msg_start_of_converstation".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeInterGray500,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        bottomNavigationBar: _buildEighteen(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 107.v,
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownIndigo90001,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 53.v,
          bottom: 40.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Row(
          children: [
            AppbarTitleCircleimage(
              imagePath: ImageConstant.imgEllipse24,
            ),
            AppbarSubtitle(
              text: "lbl_boutique_maha2".tr,
              margin: EdgeInsets.only(
                left: 12.h,
                top: 14.v,
                bottom: 14.v,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCallIndigo90001,
          margin: EdgeInsets.fromLTRB(32.h, 41.v, 32.h, 46.v),
        ),
      ],
      styleType: Style.bgShadow_1,
    );
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 61.h,
        right: 53.h,
        bottom: 53.v,
      ),
      decoration: AppDecoration.fillBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMenu,
            height: 16.v,
            width: 12.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCameraIndigo90001,
            height: 16.v,
            width: 18.h,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 5.v,
              bottom: 7.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseIndigo90001,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 5.v,
              bottom: 7.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Selector<ChatoneProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.messageController,
              builder: (context, messageController, child) {
                return CustomTextFormField(
                  width: 194.h,
                  controller: messageController,
                  hintText: "lbl_message".tr,
                  textInputAction: TextInputAction.done,
                );
              },
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSave,
            height: 16.v,
            width: 19.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }
}
