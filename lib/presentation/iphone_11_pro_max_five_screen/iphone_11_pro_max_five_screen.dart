import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/core/utils/validation_functions.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_text_form_field.dart';
import 'models/iphone_11_pro_max_five_model.dart';
import 'provider/iphone_11_pro_max_five_provider.dart';

class Iphone11ProMaxFiveScreen extends StatefulWidget {
  const Iphone11ProMaxFiveScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxFiveScreenState createState() =>
      Iphone11ProMaxFiveScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxFiveProvider(),
        child: Iphone11ProMaxFiveScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFiveScreenState extends State<Iphone11ProMaxFiveScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              _buildDeliveryWomanGiving(context),
                              SizedBox(height: 65.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Opacity(
                                      opacity: 0.4,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 50.h),
                                          child: Text("lbl_email_address".tr,
                                              style: theme
                                                  .textTheme.bodyMedium)))),
                              SizedBox(height: 10.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 50.h),
                                  child: Selector<Iphone11ProMaxFiveProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.emailController,
                                      builder:
                                          (context, emailController, child) {
                                        return CustomTextFormField(
                                            controller: emailController,
                                            hintText:
                                                "msg_dosamarvis_gmail_com".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_email"
                                                    .tr;
                                              }
                                              return null;
                                            });
                                      })),
                              SizedBox(height: 98.v),
                              Text("lbl_send_code".tr,
                                  style: CustomTextStyles
                                      .titleMediumRoundedMplus1cGray100),
                              Spacer(),
                              CustomElevatedButton(
                                  height: 48.v,
                                  text: "lbl_send_code2".tr,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 50.h),
                                  buttonStyle: CustomButtonStyles.fillPrimary,
                                  buttonTextStyle: theme.textTheme.titleLarge!,
                                  onPressed: () {
                                    onTapSendCode(context);
                                  }),
                              SizedBox(height: 55.v),
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
                                          dotWidth: 6.h))),
                              SizedBox(height: 34.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildDeliveryWomanGiving(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 37.v),
          CustomImageView(
              imagePath: ImageConstant.imgDeliveryWomanGiving,
              height: 248.v,
              width: 330.h),
          SizedBox(height: 7.v),
          Text("msg_forgot_password".tr,
              style: CustomTextStyles.displayMedium_1)
        ]));
  }

  /// Navigates to the iphone11ProMaxSixScreen when the action is triggered.
  onTapSendCode(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone11ProMaxSixScreen,
    );
  }
}
