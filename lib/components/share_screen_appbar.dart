import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShareScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ShareScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                "assets/images/cross.png",
                height: 30,
                fit: BoxFit.fitHeight,
              ),
            ),
            const Text('New Post',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ),
      actions: [
        IconButton(
            padding: EdgeInsets.only(top: 20, right: 20, bottom: 15),
            onPressed: () {},
            icon: Image.asset('assets/images/back.png')),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65);
}
