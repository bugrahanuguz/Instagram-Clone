import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReelsBottomLiked extends StatelessWidget {
  const ReelsBottomLiked({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 13,
              backgroundColor: Colors.black,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
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
              padding: const EdgeInsets.only(left: 15),
              child: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.black,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
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
    );
  }
}
