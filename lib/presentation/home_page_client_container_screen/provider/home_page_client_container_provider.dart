import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_page_client_container_model.dart';

/// A provider class for the HomePageClientContainerScreen.
///
/// This provider manages the state of the HomePageClientContainerScreen, including the
/// current homePageClientContainerModelObj

// ignore_for_file: must_be_immutable
class HomePageClientContainerProvider extends ChangeNotifier {
  HomePageClientContainerModel homePageClientContainerModelObj =
      HomePageClientContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
