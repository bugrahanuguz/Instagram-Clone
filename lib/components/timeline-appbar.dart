import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/custom_icon_button.dart';

class TimelineAppbar extends StatelessWidget {
  const TimelineAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Image.asset(
          "assets/images/instagram.png",
          height: 30,
          fit: BoxFit.fitHeight,
        ),
      ),
      actions: [
        CustomIconButton(
          icon: "assets/icons/add.png",
          onPressed: () {},
        ),
        CustomIconButton(
          icon: "assets/icons/message.png",
          onPressed: () {},
        ),
      ],
    ));
  }
}
