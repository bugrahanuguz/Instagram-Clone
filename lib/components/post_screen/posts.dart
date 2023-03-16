import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/post_screen/post_bottom_icons.dart';
import 'package:instagram_clone/components/post_screen/post_image.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostImage(),
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
        bottom_post(),
      ],
    );
  }
}

Widget bottom_post(){
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
                  children: const <TextSpan>[
                    TextSpan(text: 'User', style: TextStyle(fontWeight: FontWeight.bold)),
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