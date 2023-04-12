import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PostIconBottom extends StatelessWidget {
  final String? icon_path_post;
  final double? bottom;
  final int? text;
  const PostIconBottom(
      {super.key, required this.icon_path_post, this.bottom, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: 10, left: 5, right: 5, bottom: bottom != null ? bottom! : 15),
        child: Column(
          children: [
            Image.asset(
              icon_path_post!,
              scale: 2,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text != null
                  ? (text! >= 10000
                      ? text.toString().substring(0, 2) + "K"
                      : text.toString())
                  : "",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ));
  }
}
