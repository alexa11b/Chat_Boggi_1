import 'package:chat_boggy/domain/entities/message.dart';
import 'package:chat_boggy/presentation/Widgets/message_bubble.dart';
import 'package:flutter/material.dart';

class HerMessageBubbieView extends StatelessWidget {
  final ColorScheme colorScheme;
  final Message message;
  const HerMessageBubbieView({
    super.key,
    required this.colorScheme,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.start,
      colorBubble: colorScheme.secondary,
      child: Text(
        message.text,
        style: TextStyle(color: colorScheme.onSecondary),
      ),
      urlImagenBubble: message.imageUrl!,
    );
  }
}
