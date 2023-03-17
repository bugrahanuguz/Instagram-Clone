import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/profile_screen/user_profile_followers.dart';

import '../stories/horizontal_listview.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  get icon_path => null;

  get icon_myself => null;

  get icon_name => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: const Horizontal_Listview(
                icon_path: 'assets/icons/beer.png',
                icon_name: 'Beer',
                size: 0.1,
              ),
            ),
            const Followers(
              num: 250,
              text: 'Posts',
            ),
            const Followers(
              num: 1500,
              text: 'Followers',
            ),
            const Followers(
              num: 165,
              text: 'Following',
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Username",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const Text(
          "Username",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const Text(
          "Username",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ],
    );
  }
}
