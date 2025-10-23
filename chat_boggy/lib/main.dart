import 'package:chat_boggy/config%20theme/app_theme.dart';
import 'package:chat_boggy/providers/chat_provider.dart';
import 'package:chat_boggy/presentation/screen/screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //mas de un proveedor.
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColors: 2).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}
