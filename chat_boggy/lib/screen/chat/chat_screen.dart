import "package:chat_boggy/views/chat_view.dart";
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("boggy chat"),
        centerTitle: false,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://static.wikia.nocookie.net/adventuretimewithfinnandjake/images/8/81/BMO.png/revision/latest?cb=20200613123757',
          ),
        ),
      ),
      body: ChatView(),
    );
  }
}
