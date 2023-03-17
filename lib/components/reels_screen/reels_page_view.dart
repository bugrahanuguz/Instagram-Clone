import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/reels_screen/reels_background_image.dart';
import 'package:instagram_clone/components/reels_screen/reels_bottom_likes_people.dart';
import 'package:instagram_clone/components/reels_screen/reels_bottom_music.dart';
import 'package:instagram_clone/components/reels_screen/reels_people.dart';
import 'package:instagram_clone/components/reels_screen/reels_right_buttons.dart';
import 'package:instagram_clone/components/reels_screen/reels_top.dart';

import '../../models/post_model.dart';
import '../post_screen/post_bottom_icons.dart';

class ReelsPageView extends StatefulWidget {
  ReelsPageView({
    super.key,
  });

  @override
  State<ReelsPageView> createState() => _ReelsPageViewState();
}

class _ReelsPageViewState extends State<ReelsPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 150,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  ReelsBackGroundImage(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(height: 80, child: ReelsPerson()),
                                Text(
                                  Faker().person.firstName(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ReelsBottomLiked(),
                                SizedBox(
                                  height: 5,
                                ),
                                ReelsBottomMusic(),
                              ],
                            ),
                          ),
                          ReelsRightButton(),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
          ReelsTop(),
        ],
      ),
    );
  }
}
