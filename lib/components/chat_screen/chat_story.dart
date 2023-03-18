import 'package:flutter/material.dart';
import 'chat_item_story.dart';

class ChatStory extends StatelessWidget {
  const ChatStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        itemBuilder: (BuildContext context, int index) {
          return singleStory(index, context);
        },
      ),
    );
  }
}
