import 'package:flutter/material.dart';

import 'package:instagram_clone/components/chat_screen/chat_screen_appbar.dart';
import 'package:instagram_clone/components/chat_screen/chat_search.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ChatScreenAppBar(),
        body: Container(
            child: Column(
          children: [ChatSearchWidget()],
        )));
  }
}
