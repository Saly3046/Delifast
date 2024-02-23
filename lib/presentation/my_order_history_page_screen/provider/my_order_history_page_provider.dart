import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/my_order_history_page_model.dart';

/// A provider class for the MyOrderHistoryPageScreen.
///
/// This provider manages the state of the MyOrderHistoryPageScreen, including the
/// current myOrderHistoryPageModelObj
class MyOrderHistoryPageProvider extends ChangeNotifier {
  MyOrderHistoryPageModel myOrderHistoryPageModelObj =
      MyOrderHistoryPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
