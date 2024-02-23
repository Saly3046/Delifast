import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/order_history_page_model.dart';
import '../models/productcard_item_model.dart';

/// A provider class for the OrderHistoryPageScreen.
///
/// This provider manages the state of the OrderHistoryPageScreen, including the
/// current orderHistoryPageModelObj
class OrderHistoryPageProvider extends ChangeNotifier {
  OrderHistoryPageModel orderHistoryPageModelObj = OrderHistoryPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
