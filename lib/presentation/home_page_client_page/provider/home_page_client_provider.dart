import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_page_client_model.dart';
import '../models/homepageclientlist_item_model.dart';
import '../models/viewhierarchy_item_model.dart';

/// A provider class for the HomePageClientPage.
///
/// This provider manages the state of the HomePageClientPage, including the
/// current homePageClientModelObj

// ignore_for_file: must_be_immutable
class HomePageClientProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomePageClientModel homePageClientModelObj = HomePageClientModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
