import 'package:flutter/material.dart';

class Followers extends StatelessWidget {
  final int? num;
  final String? text;
  const Followers({super.key, this.text, this.num});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num.toString(),
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text.toString(),
          style: TextStyle(color: Colors.white, fontSize: 14),
        )
      ],
    );
  }
}
