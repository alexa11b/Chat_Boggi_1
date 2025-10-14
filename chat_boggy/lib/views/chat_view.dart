import 'package:chat_boggy/views/her_message_bubbie_view.dart';
import 'package:chat_boggy/views/my_message_bubbie_view.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
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
                itemCount: 20,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? HerMessageBubbieView(
                          colorScheme: colorScheme,
                          message: "Hola Bmo",
                        )
                      : MyMessageBubbieView(
                          colorScheme: colorScheme,
                          message: "Hola mundo",
                        );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
