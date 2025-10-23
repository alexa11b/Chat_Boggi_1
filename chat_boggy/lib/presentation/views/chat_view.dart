import 'package:chat_boggy/domain/entities/message.dart';
import 'package:chat_boggy/presentation/views/her_message_bubbie_view.dart';
import 'package:chat_boggy/presentation/views/my_message_bubbie_view.dart';
import 'package:chat_boggy/presentation/Widgets/message_field_box.dart';
import 'package:chat_boggy/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final ChatProvider chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      // limita la area de trabajo
      child: Column(
        //son hijos, trabajan dentro
        children: [
          Expanded(
            //todo lo que tenga espacio para trabajar.
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: chatProvider.messageList.length,
                controller: chatProvider.scrollController,
                itemBuilder: (context, index) {
                  return chatProvider.messageList[index].fromWho == FromWho.hers
                      ? HerMessageBubbieView(
                          colorScheme: colorScheme,
                          message:chatProvider.messageList [index],
                        )
                      : MyMessageBubbieView(
                          colorScheme: colorScheme,
                          message: chatProvider.messageList[index].text,
                        );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: MessageFieldBox(
              onSend: (value) => chatProvider.sendMessage(value),
            ),
          ),
        ],
      ),
    );
  }
}
