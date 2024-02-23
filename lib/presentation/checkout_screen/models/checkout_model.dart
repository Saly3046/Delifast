import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

class CheckoutModel {
  List<UserprofileItemModel> userprofileItemList = [
    UserprofileItemModel(
        iconButton: ImageConstant.imgBiCreditCard2FrontFill,
        creditCardText: "ccp"),
    UserprofileItemModel(
        iconButton: ImageConstant.imgDashiconsBank, creditCardText: "others")
  ];

  List<String> radioList = ["lbl_door_delivery", "lbl_pick_up"];
}
