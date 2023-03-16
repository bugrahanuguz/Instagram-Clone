import 'package:flutter/material.dart';

class ChatSearchWidget extends StatelessWidget {
  const ChatSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
