import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_page_onlt_products_tab_container_model.dart';

/// A provider class for the HomePageOnltProductsTabContainerScreen.
///
/// This provider manages the state of the HomePageOnltProductsTabContainerScreen, including the
/// current homePageOnltProductsTabContainerModelObj

// ignore_for_file: must_be_immutable
class HomePageOnltProductsTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomePageOnltProductsTabContainerModel
      homePageOnltProductsTabContainerModelObj =
      HomePageOnltProductsTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
