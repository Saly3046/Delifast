import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_11_pro_max_two_model.dart';

/// A provider class for the Iphone11ProMaxTwoScreen.
///
/// This provider manages the state of the Iphone11ProMaxTwoScreen, including the
/// current iphone11ProMaxTwoModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxTwoProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Iphone11ProMaxTwoModel iphone11ProMaxTwoModelObj = Iphone11ProMaxTwoModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
