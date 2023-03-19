import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReelsCirclePerson extends StatelessWidget {
  const ReelsCirclePerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.height * 0.04,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.red, width: 3)),
      child: ClipOval(
        child: Image.network(
          Faker().image.image(random: true),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
