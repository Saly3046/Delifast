import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/app_bar/appbar_leading_image.dart';
import 'package:creavexes3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:creavexes3/widgets/app_bar/custom_app_bar.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_radio_button.dart';
import 'models/checkout_model.dart';
import 'models/userprofile_item_model.dart';
import 'provider/checkout_provider.dart';
import 'widgets/userprofile_item_widget.dart';
import 'package:creavexes3/presentation/checkout_one_bottomsheet/checkout_one_bottomsheet.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  CheckoutScreenState createState() => CheckoutScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CheckoutProvider(), child: CheckoutScreen());
  }
}

class CheckoutScreenState extends State<CheckoutScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 45.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2.v),
                      Text("lbl_payment".tr,
                          style: theme.textTheme.displaySmall),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl_payment_method".tr,
                              style: CustomTextStyles
                                  .titleMediumPoppinsIndigo90001)),
                      SizedBox(height: 12.v),
                      _buildUserProfile(context),
                      SizedBox(height: 61.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("msg_delivery_method".tr,
                              style: CustomTextStyles
                                  .titleMediumPoppinsIndigo90001)),
                      SizedBox(height: 12.v),
                      _buildDeliveryMethod(context),
                      SizedBox(height: 37.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h, right: 2.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text("lbl_total".tr,
                                        style: CustomTextStyles
                                            .titleLargeTeal200Regular)),
                                Text("lbl_23_000_da".tr,
                                    style: CustomTextStyles.titleLargeBlack900)
                              ]))
                    ])),
            bottomNavigationBar: _buildProceedToPayment(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 63.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 44.h, top: 7.v, bottom: 32.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_checkout".tr));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 7.h),
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Consumer<CheckoutProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Opacity(
                    opacity: 0.3,
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 7.0.v),
                        child: SizedBox(
                            width: 232.h,
                            child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.black900.withOpacity(0.46)))));
              },
              itemCount: provider.checkoutModelObj.userprofileItemList.length,
              itemBuilder: (context, index) {
                UserprofileItemModel model =
                    provider.checkoutModelObj.userprofileItemList[index];
                return UserprofileItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildDeliveryMethod(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 2.h),
        child: Consumer<CheckoutProvider>(builder: (context, provider, child) {
          return provider.checkoutModelObj!.radioList.isNotEmpty
              ? Column(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 21.h, top: 31.v, right: 32.h),
                      child: CustomRadioButton(
                          text: "lbl_door_delivery".tr,
                          value: provider.checkoutModelObj?.radioList[0] ?? "",
                          groupValue: provider.deliveryMethod,
                          padding: EdgeInsets.fromLTRB(16.h, 1.v, 30.h, 1.v),
                          onChange: (value) {
                            provider.changeRadioButton1(value);
                          })),
                  Padding(
                      padding: EdgeInsets.fromLTRB(21.h, 25.v, 198.h, 33.v),
                      child: CustomRadioButton(
                          text: "lbl_pick_up".tr,
                          value: provider.checkoutModelObj?.radioList[1] ?? "",
                          groupValue: provider.deliveryMethod,
                          onChange: (value) {
                            provider.changeRadioButton1(value);
                          }))
                ])
              : Container();
        }));
  }

  /// Section Widget
  Widget _buildProceedToPayment(BuildContext context) {
    return CustomElevatedButton(
        height: 56.v,
        text: "msg_proceed_to_payment".tr,
        margin: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 40.v),
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.titleMediumMontserratGray100,
        onPressed: () {
          onTapProceedToPayment(context);
        });
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [CheckoutOneBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapProceedToPayment(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => CheckoutOneBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
