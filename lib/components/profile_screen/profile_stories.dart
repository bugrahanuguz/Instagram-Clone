import 'package:flutter/material.dart';
import 'package:instagram_clone/components/stories/horizontal_listview.dart';
import 'package:instagram_clone/components/stories/stories.dart';

class ProfileStoriesWidget extends StatelessWidget {
  const ProfileStoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle,
                  child: const Text(
                    "Profili Düzenle",
                    style: TextStyle(),
                  )),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                style: buttonStyle,
                onPressed: () {},
                child: const Text(
                  "Profili paylaş",
                  style: TextStyle(),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.11,
              child: ElevatedButton(
                style: buttonStyle,
                onPressed: () {},
                child: const Icon(
                  Icons.person_add_alt,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
        Stories()
      ]),
    );
  }
}

var backgroundColor = (Color.fromARGB(255, 45, 45, 45));
var buttonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    backgroundColor: backgroundColor,
    padding: (EdgeInsets.all(1)));
