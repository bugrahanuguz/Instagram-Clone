import 'package:flutter/material.dart';

class ChatScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            children: const [
              Text("bugrahan_uguz"),
              Icon(Icons.arrow_drop_down)
            ],
          )),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/camera.png',
                width: MediaQuery.of(context).size.width * 0.06,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              Image.asset(
                'assets/icons/message_add.png',
                width: MediaQuery.of(context).size.width * 0.05,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
