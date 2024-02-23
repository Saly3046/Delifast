import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/checkout_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the CheckoutScreen.
///
/// This provider manages the state of the CheckoutScreen, including the
/// current checkoutModelObj

// ignore_for_file: must_be_immutable
class CheckoutProvider extends ChangeNotifier {
  CheckoutModel checkoutModelObj = CheckoutModel();

  String deliveryMethod = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    deliveryMethod = value;
    notifyListeners();
  }
}
