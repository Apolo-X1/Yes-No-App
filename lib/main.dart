import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/providers/chat_providers.dart';
import 'package:yes_no_app/presentation/screeens/chat/chat_screen.dart';
import 'config/themes/theme_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
          title: 'Yes No App',
          debugShowCheckedModeBanner: false,
          theme: ThemeApp(selectedColor: 1).theme(),
          home: const ChatScreen()),
    );
  }
}
