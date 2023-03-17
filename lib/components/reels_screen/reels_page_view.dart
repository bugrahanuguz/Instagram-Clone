import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'content_screen.dart';

class ReelsPageView extends StatefulWidget {
  const ReelsPageView({super.key});

  @override
  State<ReelsPageView> createState() => _ReelsPageViewState();
}

class _ReelsPageViewState extends State<ReelsPageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Stack(
        children: [
          Swiper(
            itemBuilder: (context, index) {
              return ContentScreen(
                  src: Faker().image.image(
                      random: true,
                      height:
                          (MediaQuery.of(context).size.height * 1.5).toInt(),
                      width:
                          (MediaQuery.of(context).size.width * 1.5).toInt()));
            },
            itemCount: 5,
            scrollDirection: Axis.vertical,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reels',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
