import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
            Container(
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
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Text(
                Faker().person.firstName(),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.035,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Follow',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
