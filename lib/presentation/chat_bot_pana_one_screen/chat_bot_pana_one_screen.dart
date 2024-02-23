import 'package:flutter/material.dart';
import 'package:creavexes3/core/app_export.dart';
import 'models/chat_bot_pana_one_model.dart';
import 'provider/chat_bot_pana_one_provider.dart';

class ChatBotPanaOneScreen extends StatefulWidget {
  const ChatBotPanaOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChatBotPanaOneScreenState createState() => ChatBotPanaOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatBotPanaOneProvider(),
      child: ChatBotPanaOneScreen(),
    );
  }
}

class ChatBotPanaOneScreenState extends State<ChatBotPanaOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 500.adaptSize,
          width: 500.adaptSize,
        ),
      ),
    );
  }
}
