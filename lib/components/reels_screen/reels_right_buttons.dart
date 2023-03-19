import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../post_screen/post_bottom_icons.dart';

class ReelsRightButton extends StatelessWidget {
  const ReelsRightButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.19,
      height: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        children: [
          PostIconBottom(
            icon_path_post: 'assets/icons/Heart.png',
            bottom: 5,
            text: Faker().randomGenerator.integer(100000),
          ),
          PostIconBottom(
            icon_path_post: 'assets/icons/Comment.png',
            bottom: 5,
            text: Faker().randomGenerator.integer(100000),
          ),
          PostIconBottom(
            icon_path_post: 'assets/icons/Vector.png',
            bottom: 0,
          ),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
    );
  }
}
