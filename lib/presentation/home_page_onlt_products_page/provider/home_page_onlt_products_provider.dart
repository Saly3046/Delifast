import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_page_onlt_products_model.dart';
import '../models/viewhierarchy1_item_model.dart';

/// A provider class for the HomePageOnltProductsPage.
///
/// This provider manages the state of the HomePageOnltProductsPage, including the
/// current homePageOnltProductsModelObj
class HomePageOnltProductsProvider extends ChangeNotifier {
  HomePageOnltProductsModel homePageOnltProductsModelObj =
      HomePageOnltProductsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
