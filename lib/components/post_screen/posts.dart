import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/post_screen/post_bottom_icons.dart';
import 'package:instagram_clone/components/post_screen/post_image.dart';
import 'package:instagram_clone/models/post_model.dart';

class Posts extends StatefulWidget {
  PostModel? post;
  Posts({super.key, required this.post});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostImage(post: widget.post),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PostIconBottom(icon_path_post: 'assets/icons/Heart.png',),
            PostIconBottom(icon_path_post: 'assets/icons/Comment.png',),
            PostIconBottom(icon_path_post: 'assets/icons/Vector.png',),
            SizedBox(width: MediaQuery.of(context).size.width * 0.62,),
            PostIconBottom(icon_path_post: 'assets/icons/save_post.png',),
          ],
        ),
        bottom_post(widget.post!.username),
      ],
    );
  }
}

Widget bottom_post(String username){
  var userNmae = username;
  return Padding(
    padding: EdgeInsets.only(left: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text('10.000 Likes',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: userNmae, style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' world!'),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
      ],
    ),
  );
}