import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chatthree_model.dart';

/// A provider class for the ChatthreeScreen.
///
/// This provider manages the state of the ChatthreeScreen, including the
/// current chatthreeModelObj
class ChatthreeProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  ChatthreeModel chatthreeModelObj = ChatthreeModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
