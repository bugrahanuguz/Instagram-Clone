import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/post_screen/post_text_row.dart';
import 'package:instagram_clone/components/stories/horizontal_listview.dart';
import 'package:instagram_clone/models/post_model.dart';

class PostImage extends StatelessWidget {
   PostModel? post;
   PostImage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.99,
      child: Column(
        children: [
          PostTextRow(name_of_post_own: post!.username,post: post!,),
          Image.network(post!.media),
        ],
      )
    );
  }
}