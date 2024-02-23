import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/checkout_one_model.dart';

/// A provider class for the CheckoutOneBottomsheet.
///
/// This provider manages the state of the CheckoutOneBottomsheet, including the
/// current checkoutOneModelObj

// ignore_for_file: must_be_immutable
class CheckoutOneProvider extends ChangeNotifier {
  CheckoutOneModel checkoutOneModelObj = CheckoutOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
