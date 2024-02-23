import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profile_pov_visitor_model.dart';
import '../models/userprofile1_item_model.dart';

/// A provider class for the ProfilePovVisitorScreen.
///
/// This provider manages the state of the ProfilePovVisitorScreen, including the
/// current profilePovVisitorModelObj

// ignore_for_file: must_be_immutable
class ProfilePovVisitorProvider extends ChangeNotifier {
  ProfilePovVisitorModel profilePovVisitorModelObj = ProfilePovVisitorModel();

  @override
  void dispose() {
    super.dispose();
  }
}
