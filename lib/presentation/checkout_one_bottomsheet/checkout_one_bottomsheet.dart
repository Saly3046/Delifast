import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'package:creavexes3/widgets/custom_elevated_button.dart';
import 'models/checkout_one_model.dart';
import 'provider/checkout_one_provider.dart';

class CheckoutOneBottomsheet extends StatefulWidget {
  const CheckoutOneBottomsheet({Key? key}) : super(key: key);

  @override
  CheckoutOneBottomsheetState createState() => CheckoutOneBottomsheetState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CheckoutOneProvider(),
        child: CheckoutOneBottomsheet());
  }
}

class CheckoutOneBottomsheetState extends State<CheckoutOneBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 2.h),
            padding: EdgeInsets.symmetric(horizontal: 43.h, vertical: 29.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL50),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  width: 83.h,
                  child: Divider(color: theme.colorScheme.errorContainer)),
              SizedBox(height: 9.v),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup374,
                  height: 180.v,
                  width: 217.h),
              SizedBox(height: 34.v),
              Text("lbl_great_news".tr, style: theme.textTheme.headlineSmall),
              SizedBox(height: 19.v),
              Container(
                  width: 301.h,
                  margin: EdgeInsets.only(left: 13.h, right: 12.h),
                  child: Text("msg_your_payment_has".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          CustomTextStyles.titleMediumMontserratBluegray900)),
              SizedBox(height: 7.v),
              CustomElevatedButton(
                  height: 46.v,
                  text: "lbl_track_my_order".tr,
                  buttonStyle: CustomButtonStyles.fillIndigoTL7,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumMontserratWhiteA700_1,
                  onPressed: () {
                    onTapTrackMyOrder(context);
                  }),
              SizedBox(height: 19.v),
              Text("msg_order_something".tr,
                  style: CustomTextStyles.titleMediumMontserratErrorContainer),
              SizedBox(height: 57.v)
            ])));
  }

  /// Navigates to the iphone11ProMaxElevenScreen when the action is triggered.
  onTapTrackMyOrder(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone11ProMaxElevenScreen,
    );
  }
}
