import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/core/utils/validation_functions.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'package:creavexes3/widgets/custom_text_form_field.dart';
import '../iphone_11_pro_max_four_screen/widgets/box4section_item_widget.dart';
import 'models/box4section_item_model.dart';
import 'models/iphone_11_pro_max_four_model.dart';
import 'provider/iphone_11_pro_max_four_provider.dart';

class Iphone11ProMaxFourScreen extends StatefulWidget {
  const Iphone11ProMaxFourScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxFourScreenState createState() =>
      Iphone11ProMaxFourScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxFourProvider(),
        child: Iphone11ProMaxFourScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFourScreenState extends State<Iphone11ProMaxFourScreen> {
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
                                  _buildOneSection(context),
                                  SizedBox(height: 29.v),
                                  Opacity(
                                      opacity: 0.4,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 42.h),
                                          child: Text("lbl_email_address".tr,
                                              style:
                                                  theme.textTheme.bodyMedium))),
                                  SizedBox(height: 10.v),
                                  _buildEmailSection(context),
                                  SizedBox(height: 40.v),
                                  Opacity(
                                      opacity: 0.4,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 42.h),
                                          child: Text("lbl_password".tr,
                                              style:
                                                  theme.textTheme.bodyMedium))),
                                  SizedBox(height: 6.v),
                                  _buildPasswordSection(context),
                                  SizedBox(height: 42.v),
                                  Opacity(
                                      opacity: 0.4,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 42.h),
                                          child: Text("msg_confirm_password".tr,
                                              style:
                                                  theme.textTheme.bodyMedium))),
                                  SizedBox(height: 4.v),
                                  _buildConfirmPasswordSection(context),
                                  SizedBox(height: 23.v),
                                  Opacity(
                                      opacity: 0.4,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 42.h),
                                          child: Text("lbl_are_you".tr,
                                              style:
                                                  theme.textTheme.bodyMedium))),
                                  SizedBox(height: 19.v),
                                  _buildBox4Section(context),
                                  SizedBox(height: 29.v),
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
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 89.h),
                                                        child: Text(
                                                            "lbl_create_account"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleMediumRoundedMplus1cGray100))),
                                                _buildSignUpSection(context)
                                              ]))),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildOneSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 41.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 52.v),
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
                    GestureDetector(
                        onTap: () {
                          onTapTxtLogin(context);
                        },
                        child: Text("lbl_login".tr,
                            style: CustomTextStyles.titleMedium18)),
                    Text("lbl_sign_up".tr,
                        style: CustomTextStyles.titleMedium18)
                  ])),
          SizedBox(height: 11.v),
          Align(
              alignment: Alignment.centerRight,
              child: SizedBox(width: 134.h, child: Divider()))
        ]));
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 42.h, right: 58.h),
        child: Selector<Iphone11ProMaxFourProvider, TextEditingController?>(
            selector: (context, provider) => provider.emailSectionController,
            builder: (context, emailSectionController, child) {
              return CustomTextFormField(
                  controller: emailSectionController,
                  hintText: "msg_dosamarvis_gmail_com".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 42.h, right: 58.h),
        child: Selector<Iphone11ProMaxFourProvider, TextEditingController?>(
            selector: (context, provider) => provider.passwordSectionController,
            builder: (context, passwordSectionController, child) {
              return CustomTextFormField(
                  controller: passwordSectionController,
                  hintText: "lbl".tr,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildConfirmPasswordSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 42.h, right: 58.h),
        child: Selector<Iphone11ProMaxFourProvider, TextEditingController?>(
            selector: (context, provider) =>
                provider.confirmPasswordSectionController,
            builder: (context, confirmPasswordSectionController, child) {
              return CustomTextFormField(
                  controller: confirmPasswordSectionController,
                  hintText: "lbl".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildBox4Section(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 49.h),
        child: Consumer<Iphone11ProMaxFourProvider>(
            builder: (context, provider, child) {
          return Wrap(
              runSpacing: 7.v,
              spacing: 7.h,
              children: List<Widget>.generate(
                  provider.iphone11ProMaxFourModelObj.box4sectionItemList
                      .length, (index) {
                Box4sectionItemModel model = provider
                    .iphone11ProMaxFourModelObj.box4sectionItemList[index];
                return Box4sectionItemWidget(model,
                    onSelectedChipView1: (value) {
                  provider.onSelectedChipView1(index, value);
                });
              }));
        }));
  }

  /// Section Widget
  Widget _buildSignUpSection(BuildContext context) {
    return CustomElevatedButton(
        height: 48.v,
        width: 314.h,
        text: "lbl_sign_up2".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: theme.textTheme.titleLarge!,
        alignment: Alignment.center);
  }

  /// Navigates to the iphone11ProMaxTwoScreen when the action is triggered.
  onTapTxtLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.appNavigationScreen,
    );
  }
}
