import 'package:chat_boggy/domain/entities/message.dart';
import 'package:chat_boggy/infrastructure/datasource/get_yes_no_answer.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();

  final List<Message> messageList = [];

  Future<void> sendMessage(String message) async {
    final newMessage = Message(text: message, fromWho: FromWho.me);
    await setMessagesList(newMessage);
    final response = await GetYesNoAnswer().getAnswer();
    await setMessagesList(response);
  }

  Future<void> setMessagesList(Message message) async {
    messageList.add(message);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 300));
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
