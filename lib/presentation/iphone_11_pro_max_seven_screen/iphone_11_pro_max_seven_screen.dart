import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/core/utils/validation_functions.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_text_form_field.dart';
import 'models/iphone_11_pro_max_seven_model.dart';
import 'provider/iphone_11_pro_max_seven_provider.dart';

class Iphone11ProMaxSevenScreen extends StatefulWidget {
  const Iphone11ProMaxSevenScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxSevenScreenState createState() =>
      Iphone11ProMaxSevenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxSevenProvider(),
        child: Iphone11ProMaxSevenScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone11ProMaxSevenScreenState extends State<Iphone11ProMaxSevenScreen> {
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
                              SizedBox(height: 71.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Opacity(
                                      opacity: 0.4,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 50.h),
                                          child: Text("lbl_password".tr,
                                              style: theme
                                                  .textTheme.bodyMedium)))),
                              SizedBox(height: 6.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 50.h),
                                  child: Selector<Iphone11ProMaxSevenProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.passwordController,
                                      builder:
                                          (context, passwordController, child) {
                                        return CustomTextFormField(
                                            controller: passwordController,
                                            hintText: "lbl".tr,
                                            textInputType:
                                                TextInputType.visiblePassword,
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
                              SizedBox(height: 38.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Opacity(
                                      opacity: 0.4,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 50.h),
                                          child: Text("msg_confirm_password".tr,
                                              style: theme
                                                  .textTheme.bodyMedium)))),
                              SizedBox(height: 4.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 50.h),
                                  child: Selector<Iphone11ProMaxSevenProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.confirmpasswordController,
                                      builder: (context,
                                          confirmpasswordController, child) {
                                        return CustomTextFormField(
                                            controller:
                                                confirmpasswordController,
                                            hintText: "lbl".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
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
                              SizedBox(height: 75.v),
                              CustomElevatedButton(
                                  height: 48.v,
                                  text: "lbl_reset_password".tr,
                                  margin:
                                      EdgeInsets.only(left: 37.h, right: 36.h),
                                  buttonStyle: CustomButtonStyles.fillPrimary,
                                  buttonTextStyle: CustomTextStyles
                                      .titleMediumRoundedMplus1cGray100,
                                  onPressed: () {
                                    onTapResetPassword(context);
                                  }),
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
                            ])))))));
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
              SizedBox(height: 20.v),
              SizedBox(
                  height: 297.v,
                  width: 347.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgDeliveryWomanGiving,
                        height: 248.v,
                        width: 330.h,
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("lbl_reset_password".tr,
                            style: theme.textTheme.displayMedium))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text("msg_please_type_something".tr,
                      style: theme.textTheme.bodyLarge))
            ]));
  }

  /// Navigates to the iphone11ProMaxTwoScreen when the action is triggered.
  onTapResetPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone11ProMaxTwoScreen,
    );
  }
}
