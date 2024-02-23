import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/notification_page_for_client_model.dart';
import '../models/userprofilelist1_item_model.dart';

/// A provider class for the NotificationPageForClientScreen.
///
/// This provider manages the state of the NotificationPageForClientScreen, including the
/// current notificationPageForClientModelObj
class NotificationPageForClientProvider extends ChangeNotifier {
  NotificationPageForClientModel notificationPageForClientModelObj =
      NotificationPageForClientModel();

  @override
  void dispose() {
    super.dispose();
  }
}
