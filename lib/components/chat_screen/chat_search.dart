import 'package:flutter/material.dart';

class ChatSearchWidget extends StatelessWidget {
  const ChatSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height * 0.08,
      child: TextField(
        decoration: InputDecoration(
            hintText: "Ara",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
