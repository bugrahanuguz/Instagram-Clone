import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/components/gradient_mask.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          // crossAxisAlignment:<<<<.< CrossAxisAlignment.start,
          padding: const EdgeInsets.only(left: 20),
          children: [
            Row(
              children: const [
                BackButton(
                  color: Colors.white,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                children: const [
                  RadiantGradientMask(
                      child: Icon(
                    Icons.check_circle_outline,
                    size: 80,
                    color: Colors.white,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "You’re all caught up \nwith the new activity.",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Today",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            _likeNotification(),
            _likeNotification(),
            _likeNotification(),
            _storyNotification(),
            _storyNotification(),
            _storyNotification(),
            _followNotification(),
            _followNotification(),
            _followNotification(),
            _followNotification(),
            _followNotification(),
            _followNotification(),
          ],
        ),
      ),
    );
  }

  _likeNotification() => Row(
        children: [
          Stack(
            children: [
              _userAvatar(40),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: _userAvatar(40),
              ),
            ],
          ),
          Expanded(
            child: RichText(
                text: const TextSpan(
                    text: "ben",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                    text: " and",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: " amartya",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " liked your story.",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: " 2h",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.normal),
                  ),
                ])),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.network(
              Faker().image.image(random: true),
              width: 50,
              height: 80,
            ),
          ),
        ],
      );
  _storyNotification() => Row(
        children: [
          _userAvatar(65),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: RichText(
                text: const TextSpan(
                    text: "ben",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                    text: " and",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: " amartya",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " liked your story.",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: " 2h",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.normal),
                  ),
                ])),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.network(
              Faker().image.image(random: true),
              width: 50,
              height: 80,
            ),
          ),
        ],
      );
  _followNotification() => Row(
        children: [
          Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.purple,
                    Colors.pink,
                    Colors.orange,
                  ],
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              padding: const EdgeInsets.all(3),
              child: _userAvatar(60)),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: RichText(
                text: const TextSpan(
                    text: "Ertugrul",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                    text: " started following you .",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: " 2h",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.normal),
                  ),
                ])),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Follow",
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      );

  Widget _userAvatar(double size) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                Faker().image.image(random: true),
              )),
        ),
      );
}
