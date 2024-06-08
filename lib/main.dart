import 'package:flutter/material.dart';
import 'package:messenger_app/UI/chat_screen.dart';
import 'package:messenger_app/UI/in_chat_screen.dart';
import 'package:messenger_app/UI/login_screen.dart';
import 'UI/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Messenger App',
      debugShowCheckedModeBanner: false,
      home:const SplashScreen() ,
      routes: {
        ChatScreen.routeName: (_) => const ChatScreen(),
        LoginScreen.routeName: (_) => const LoginScreen(),
        InChatScreen.routeName: (_) => const InChatScreen(chatterName: '',),
      },
      //initialRoute: SplashScreen.routeName,
    );
  }
}
