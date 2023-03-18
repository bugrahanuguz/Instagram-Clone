import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class DiscoveryUserList extends StatelessWidget {
  const DiscoveryUserList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Recently",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("See all"),
            ),
          ],
        ),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
        _userItem(),
      ],
    );
  }

  Widget _userItem() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  Faker().image.image(random: true),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Faker().internet.userName(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  Faker().person.name(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
