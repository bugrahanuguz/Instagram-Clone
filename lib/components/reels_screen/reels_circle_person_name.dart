import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReelsCirclePersonName extends StatelessWidget {
  const ReelsCirclePersonName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Text(
        Faker().person.firstName(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
