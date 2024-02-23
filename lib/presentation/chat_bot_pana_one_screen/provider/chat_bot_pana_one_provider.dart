import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chat_bot_pana_one_model.dart';

/// A provider class for the ChatBotPanaOneScreen.
///
/// This provider manages the state of the ChatBotPanaOneScreen, including the
/// current chatBotPanaOneModelObj
class ChatBotPanaOneProvider extends ChangeNotifier {
  ChatBotPanaOneModel chatBotPanaOneModelObj = ChatBotPanaOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
