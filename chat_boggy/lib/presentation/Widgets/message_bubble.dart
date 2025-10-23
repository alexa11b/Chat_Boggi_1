import 'package:chat_boggy/presentation/Widgets/image_bubble.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final Color colorBubble;
  final Widget? child;
  final String? urlImagenBubble;

  const MessageBubble({
    super.key,
    required this.alignment,
    required this.colorBubble,
    this.child,
    this.urlImagenBubble,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        if (child != null) ...[
          Container(
            decoration: BoxDecoration(
              color: colorBubble,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: child!,
            ),
          ),
          const SizedBox(height: 10),
        ],

        if (urlImagenBubble != null) ...[
          ImageBubble(imageUrl: urlImagenBubble!),
          const SizedBox(height: 10),
        ],
      ],
    );
  }
}
