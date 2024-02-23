import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'models/chatthree_one_model.dart';
import 'provider/chatthree_one_provider.dart';

// ignore_for_file: must_be_immutable
class ChatthreeOneBottomsheet extends StatefulWidget {
  const ChatthreeOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  ChatthreeOneBottomsheetState createState() => ChatthreeOneBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatthreeOneProvider(),
      child: ChatthreeOneBottomsheet(),
    );
  }
}

class ChatthreeOneBottomsheetState extends State<ChatthreeOneBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 100.h,
          vertical: 29.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL50,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 83.h,
              child: Divider(
                color: theme.colorScheme.errorContainer,
              ),
            ),
            SizedBox(height: 102.v),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse25,
              height: 214.adaptSize,
              width: 214.adaptSize,
              radius: BorderRadius.circular(
                107.h,
              ),
            ),
            SizedBox(height: 26.v),
            Text(
              "lbl_calling_mohamed".tr,
              style: CustomTextStyles.titleMediumMontserratWhiteA70016,
            ),
            SizedBox(height: 26.v),
          ],
        ),
      ),
    );
  }
}
