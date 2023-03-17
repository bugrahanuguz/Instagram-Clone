import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/reels_screen/reels_people.dart';
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
    return SafeArea(
      child: Container(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  Faker().image.image(random: true)),
                              fit: BoxFit.cover)),
                    ),
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
                                  Container(height: 70, child: ReelsPerson()),
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
                                  Row(
                                    children: [
                                      Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 13,
                                            backgroundColor: Colors.black,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              child: Image.network(
                                                faker.image.image(keywords: [
                                                  "profile",
                                                  "picture",
                                                  "selfie",
                                                  "person",
                                                  "real person"
                                                ]),
                                                width: 24,
                                                height: 24,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: CircleAvatar(
                                              radius: 13,
                                              backgroundColor: Colors.black,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Image.network(
                                                  faker.image.image(keywords: [
                                                    "profile",
                                                    "picture",
                                                    "selfie",
                                                    "person",
                                                    "real person"
                                                  ]),
                                                  width: 24,
                                                  height: 24,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Liked by ${Faker().person.firstName()} and ${Faker().randomGenerator.integer(500, min: 30)} others',
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    Faker().person.firstName() +
                                        " - " +
                                        Faker().person.lastName(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.6,
                              child: Column(
                                children: [
                                  PostIconBottom(
                                    icon_path_post: 'assets/icons/Heart.png',
                                    bottom: 5,
                                    text: 150,
                                  ),
                                  PostIconBottom(
                                    icon_path_post: 'assets/icons/Comment.png',
                                    bottom: 5,
                                    text: 1504,
                                  ),
                                  PostIconBottom(
                                    icon_path_post: 'assets/icons/Vector.png',
                                    bottom: 0,
                                  ),
                                  Icon(Icons.more_vert, color: Colors.white),
                                ],
                              ),
                            ),
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
      ),
    );
  }
}

/*

Container(
                                        ),





PostIconBottom(
                                    icon_path_post: 'assets/icons/Heart.png',
                                  ),
                                  PostIconBottom(
                                    icon_path_post: 'assets/icons/Comment.png',
                                  ),
                                  PostIconBottom(
                                    icon_path_post: 'assets/icons/Vector.png',
                                  ),

 */