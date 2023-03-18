import 'package:flutter/material.dart';
import 'package:instagram_clone/components/chat_screen/chat_screen_appbar.dart';
import 'package:instagram_clone/components/chat_screen/chat_search.dart';
import '../components/chat_screen/chat_message.dart';
import '../components/chat_screen/chat_story.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: const ChatScreenAppBar(),
        body: GestureDetector(
          onHorizontalDragEnd: (e) {
            Navigator.pop(context);
          },
          child: ListView(
            children: const [ChatSearchWidget(), ChatStory(), ChatMessage()],
          ),
        ));
  }
}
