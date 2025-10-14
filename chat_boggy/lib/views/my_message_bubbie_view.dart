import 'package:chat_boggy/Widgets/message_bubble.dart';
import 'package:flutter/material.dart';

class MyMessageBubbieView extends StatelessWidget {
  final ColorScheme colorScheme;
  final String message;
  const MyMessageBubbieView({
    super.key,
    required this.colorScheme,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.end,
      colorBubble: colorScheme.primary,
      child: Text(message, style: TextStyle(color: colorScheme.onPrimary)),
    );
  }
}
