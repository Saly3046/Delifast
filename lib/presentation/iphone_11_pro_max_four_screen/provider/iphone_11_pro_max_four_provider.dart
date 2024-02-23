import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_11_pro_max_four_model.dart';
import '../models/box4section_item_model.dart';

/// A provider class for the Iphone11ProMaxFourScreen.
///
/// This provider manages the state of the Iphone11ProMaxFourScreen, including the
/// current iphone11ProMaxFourModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFourProvider extends ChangeNotifier {
  TextEditingController emailSectionController = TextEditingController();

  TextEditingController passwordSectionController = TextEditingController();

  TextEditingController confirmPasswordSectionController =
      TextEditingController();

  Iphone11ProMaxFourModel iphone11ProMaxFourModelObj =
      Iphone11ProMaxFourModel();

  @override
  void dispose() {
    super.dispose();
    emailSectionController.dispose();
    passwordSectionController.dispose();
    confirmPasswordSectionController.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    iphone11ProMaxFourModelObj.box4sectionItemList.forEach((element) {
      element.isSelected = false;
    });
    iphone11ProMaxFourModelObj.box4sectionItemList[index].isSelected = value;
    notifyListeners();
  }
}
