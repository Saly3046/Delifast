import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chatthree_one_model.dart';

/// A provider class for the ChatthreeOneBottomsheet.
///
/// This provider manages the state of the ChatthreeOneBottomsheet, including the
/// current chatthreeOneModelObj
class ChatthreeOneProvider extends ChangeNotifier {
  ChatthreeOneModel chatthreeOneModelObj = ChatthreeOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
