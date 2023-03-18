import 'package:flutter/material.dart';
import '../discovery_screen/discovery_userlist.dart';

class ChatSearchList extends StatelessWidget {
  const ChatSearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.white)),
        ),
      ),
      body: DiscoveryUserList(),
    );
  }
}
