import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.iconButton,
    this.creditCardText,
    this.id,
  }) {
    iconButton = iconButton ?? ImageConstant.imgBiCreditCard2FrontFill;
    creditCardText = creditCardText ?? "ccp";
    id = id ?? "";
  }

  String? iconButton;

  String? creditCardText;

  String? id;
}
