import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReelsBackGroundImage extends StatelessWidget {
  const ReelsBackGroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          image: DecorationImage(
              opacity: 0.6,
              image: NetworkImage(Faker().image.image(random: true)),
              fit: BoxFit.cover)),
    );
  }
}
