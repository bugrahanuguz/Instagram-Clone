import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/reels_screen/reels_circle_person.dart';
import 'package:instagram_clone/components/reels_screen/reels_circle_person_name.dart';
import 'package:instagram_clone/components/reels_screen/reels_follow_button.dart';

class ReelsPerson extends StatelessWidget {
  const ReelsPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.04,
        child: Row(
          children: [
            ReelsCirclePerson(),
            SizedBox(
              width: 5,
            ),
            ReelsCirclePersonName(),
            ReelsFollowButton(),
          ],
        ),
      ),
    );
  }
}
