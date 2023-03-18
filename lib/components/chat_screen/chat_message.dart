import 'package:flutter/material.dart';
import 'chat_item.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              child: const Text(
                "Messages",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
            ),
            TextButton(
              style: const ButtonStyle(),
              onPressed: () {},
              child: const Text(
                "Requests",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
          ],
        ),
        messageItem(context),
        messageItem(context),
        messageItem(context),
        messageItem(context),
        messageItem(context),
        messageItem(context),
        messageItem(context),
        messageItem(context),
      ],
    );
  }
}
