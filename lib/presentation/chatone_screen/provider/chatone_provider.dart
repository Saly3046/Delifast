import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chatone_model.dart';

/// A provider class for the ChatoneScreen.
///
/// This provider manages the state of the ChatoneScreen, including the
/// current chatoneModelObj
class ChatoneProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  ChatoneModel chatoneModelObj = ChatoneModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
