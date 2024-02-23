import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/tracking_my_orders_page_model.dart';
import '../models/productcard1_item_model.dart';

/// A provider class for the TrackingMyOrdersPageScreen.
///
/// This provider manages the state of the TrackingMyOrdersPageScreen, including the
/// current trackingMyOrdersPageModelObj
class TrackingMyOrdersPageProvider extends ChangeNotifier {
  TrackingMyOrdersPageModel trackingMyOrdersPageModelObj =
      TrackingMyOrdersPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
