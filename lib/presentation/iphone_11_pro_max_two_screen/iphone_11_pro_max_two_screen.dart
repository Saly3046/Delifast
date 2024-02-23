import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/core/utils/validation_functions.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_text_form_field.dart';
import 'models/iphone_11_pro_max_two_model.dart';
import 'provider/iphone_11_pro_max_two_provider.dart';

class Iphone11ProMaxTwoScreen extends StatefulWidget {
  const Iphone11ProMaxTwoScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxTwoScreenState createState() => Iphone11ProMaxTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxTwoProvider(),
        child: Iphone11ProMaxTwoScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone11ProMaxTwoScreenState extends State<Iphone11ProMaxTwoScreen> {
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
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildIPhone11ProMax(context),
                                  SizedBox(height: 61.v),
                                  Opacity(
                                      opacity: 0.4,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 50.h),
                                          child: Text("lbl_email_address".tr,
                                              style: CustomTextStyles
                                                  .titleSmallSFProTextBlack900))),
                                  SizedBox(height: 10.v),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50.h),
                                      child: Selector<Iphone11ProMaxTwoProvider,
                                              TextEditingController?>(
                                          selector: (context, provider) =>
                                              provider.emailController,
                                          builder: (context, emailController,
                                              child) {
                                            return CustomTextFormField(
                                                controller: emailController,
                                                hintText:
                                                    "msg_dosamarvis_gmail_com"
                                                        .tr,
                                                textInputType:
                                                    TextInputType.emailAddress,
                                                alignment: Alignment.center,
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
                                  SizedBox(height: 45.v),
                                  Opacity(
                                      opacity: 0.4,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 50.h),
                                          child: Text("lbl_password".tr,
                                              style: CustomTextStyles
                                                  .titleSmallSFProTextBlack900))),
                                  SizedBox(height: 6.v),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50.h),
                                      child: Selector<Iphone11ProMaxTwoProvider,
                                              TextEditingController?>(
                                          selector: (context, provider) =>
                                              provider.passwordController,
                                          builder: (context, passwordController,
                                              child) {
                                            return CustomTextFormField(
                                                controller: passwordController,
                                                hintText: "lbl".tr,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                alignment: Alignment.center,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidPassword(value,
                                                          isRequired: true))) {
                                                    return "err_msg_please_enter_valid_password"
                                                        .tr;
                                                  }
                                                  return null;
                                                },
                                                obscureText: true);
                                          })),
                                  SizedBox(height: 34.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPasscode(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 50.h),
                                          child: Text("msg_forgot_passcode".tr,
                                              style: CustomTextStyles
                                                  .titleMediumPrimary))),
                                  Spacer(),
                                  SizedBox(height: 58.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          height: 48.v,
                                          width: 314.h,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 125.h,
                                                                top: 8.v),
                                                        child: Text(
                                                            "lbl_login".tr,
                                                            style: CustomTextStyles
                                                                .titleMediumGray100))),
                                                CustomElevatedButton(
                                                    height: 48.v,
                                                    width: 314.h,
                                                    text: "lbl_log_in2".tr,
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillPrimary,
                                                    buttonTextStyle: theme
                                                        .textTheme.titleLarge!,
                                                    alignment: Alignment.center)
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildDeliveryWomanGiving(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 14.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 37.v),
              CustomImageView(
                  imagePath: ImageConstant.imgDeliveryWomanGiving,
                  height: 248.v,
                  width: 330.h),
              SizedBox(height: 30.v),
              Padding(
                  padding: EdgeInsets.only(left: 47.h, right: 38.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_login".tr,
                            style: CustomTextStyles.titleMedium18),
                        GestureDetector(
                            onTap: () {
                              onTapTxtSignUp(context);
                            },
                            child: Text("lbl_sign_up".tr,
                                style: CustomTextStyles.titleMedium18))
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildIPhone11ProMax(BuildContext context) {
    return SizedBox(
        height: 369.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          _buildDeliveryWomanGiving(context),
          Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(width: 184.h, child: Divider(indent: 50.h)))
        ]));
  }

  /// Navigates to the iphone11ProMaxFourScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone11ProMaxFourScreen,
    );
  }

  /// Navigates to the iphone11ProMaxFiveScreen when the action is triggered.
  onTapTxtForgotPasscode(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone11ProMaxFiveScreen,
    );
  }
}
