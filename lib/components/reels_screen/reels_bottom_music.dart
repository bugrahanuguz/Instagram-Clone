import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReelsBottomMusic extends StatelessWidget {
  const ReelsBottomMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Faker().person.firstName() + " - " + Faker().person.lastName(),
      style: TextStyle(
          color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}
