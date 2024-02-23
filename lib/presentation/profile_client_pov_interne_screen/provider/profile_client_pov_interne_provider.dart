import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profile_client_pov_interne_model.dart';

/// A provider class for the ProfileClientPovInterneScreen.
///
/// This provider manages the state of the ProfileClientPovInterneScreen, including the
/// current profileClientPovInterneModelObj

// ignore_for_file: must_be_immutable
class ProfileClientPovInterneProvider extends ChangeNotifier {
  ProfileClientPovInterneModel profileClientPovInterneModelObj =
      ProfileClientPovInterneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
