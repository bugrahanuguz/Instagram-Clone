import 'package:flutter/material.dart';
import 'package:instagram_clone/components/custom_icon_button.dart';
import 'package:instagram_clone/view/chat_screen.dart';

class TimelineAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TimelineAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Image.asset(
          "assets/images/instagram.png",
          height: 30,
          fit: BoxFit.fitHeight,
        ),
      ),
      actions: [
        CustomIconButton(
          icon: "assets/icons/add.png",
          onPressed: () {},
        ),
        CustomIconButton(
          icon: "assets/icons/message.png",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65);
}
