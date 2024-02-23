import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_pin_code_text_field.dart';
import 'models/iphone_11_pro_max_six_model.dart';
import 'provider/iphone_11_pro_max_six_provider.dart';

class Iphone11ProMaxSixScreen extends StatefulWidget {
  const Iphone11ProMaxSixScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxSixScreenState createState() => Iphone11ProMaxSixScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxSixProvider(),
        child: Iphone11ProMaxSixScreen());
  }
}

class Iphone11ProMaxSixScreenState extends State<Iphone11ProMaxSixScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildDeliveryWomanGiving(context),
                  SizedBox(height: 55.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.h),
                      child: Selector<Iphone11ProMaxSixProvider,
                              TextEditingController?>(
                          selector: (context, provider) =>
                              provider.otpController,
                          builder: (context, otpController, child) {
                            return CustomPinCodeTextField(
                                context: context,
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                });
                          })),
                  SizedBox(height: 75.v),
                  CustomElevatedButton(
                      height: 48.v,
                      text: "lbl_verify_code".tr,
                      margin: EdgeInsets.only(left: 37.h, right: 36.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumRoundedMplus1cWhiteA700,
                      onPressed: () {
                        onTapVerifyCode(context);
                      }),
                  SizedBox(height: 41.v),
                  CustomElevatedButton(
                      height: 48.v,
                      text: "lbl_send_code_again".tr,
                      margin: EdgeInsets.only(left: 37.h, right: 36.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumRoundedMplus1cGray100),
                  Spacer(),
                  SizedBox(height: 34.v),
                  SizedBox(
                      height: 6.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: appTheme.indigo900,
                              dotColor: appTheme.gray300,
                              dotHeight: 6.v,
                              dotWidth: 6.h)))
                ]))));
  }

  /// Section Widget
  Widget _buildDeliveryWomanGiving(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 34.v),
              CustomImageView(
                  imagePath: ImageConstant.imgDeliveryWomanGiving,
                  height: 173.v,
                  width: 253.h,
                  alignment: Alignment.center),
              Container(
                  width: 349.h,
                  margin: EdgeInsets.only(right: 16.h),
                  child: Text("msg_please_check_your".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.displayMedium!
                          .copyWith(height: 1.30))),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_we_ve_sent_a_code2".tr,
                            style: CustomTextStyles.bodyLargeb2000000),
                        TextSpan(
                            text: "msg_helloworld_gmail_com".tr,
                            style: CustomTextStyles.titleMediumInterff000000)
                      ]),
                      textAlign: TextAlign.left))
            ]));
  }

  /// Navigates to the iphone11ProMaxSevenScreen when the action is triggered.
  onTapVerifyCode(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone11ProMaxSevenScreen,
    );
  }
}
