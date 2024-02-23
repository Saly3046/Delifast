import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_11_pro_max_eleven_model.dart';

/// A provider class for the Iphone11ProMaxElevenScreen.
///
/// This provider manages the state of the Iphone11ProMaxElevenScreen, including the
/// current iphone11ProMaxElevenModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxElevenProvider extends ChangeNotifier {
  Iphone11ProMaxElevenModel iphone11ProMaxElevenModelObj =
      Iphone11ProMaxElevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
