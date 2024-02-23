import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_11_pro_max_seven_model.dart';

/// A provider class for the Iphone11ProMaxSevenScreen.
///
/// This provider manages the state of the Iphone11ProMaxSevenScreen, including the
/// current iphone11ProMaxSevenModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxSevenProvider extends ChangeNotifier {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Iphone11ProMaxSevenModel iphone11ProMaxSevenModelObj =
      Iphone11ProMaxSevenModel();

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
