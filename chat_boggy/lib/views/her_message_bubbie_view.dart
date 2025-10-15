import 'package:chat_boggy/Widgets/message_bubble.dart';
import 'package:flutter/material.dart';

class HerMessageBubbieView extends StatelessWidget {
  final ColorScheme colorScheme;
  final String urlImagenBubble;
  const HerMessageBubbieView({
    super.key,
    required this.colorScheme,
    required this.urlImagenBubble,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      alignment: CrossAxisAlignment.start,
      colorBubble: colorScheme.secondary,
      child: null,
      urlImagenBubble: urlImagenBubble,
    );
  }
}
