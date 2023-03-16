import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/post_screen/post_text_row.dart';
import 'package:instagram_clone/components/stories/horizontal_listview.dart';

class PostImage extends StatelessWidget {
  const PostImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.99,
      child: Column(
        children: [
          PostTextRow(name_of_post_own: 'Sami',),
          Image.asset('assets/images/post_image.png'),
        ],
      )
    );
  }
}