import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/models/post_model.dart';

class PostTextRow extends StatelessWidget {
  final String? name_of_post_own;
  final PostModel post;
  const PostTextRow({super.key, required this.name_of_post_own, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.width * 0.95,
        child: Row(
          children: [
                Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.red, width: 3)),
                  child: ClipOval(
                    child: Image.network(post.userAvatar,fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(name_of_post_own!, style: TextStyle(color: Colors.white),)),
                SizedBox(width: MediaQuery.of(context).size.width * 0.19,),
                Icon(Icons.more_vert, color: Colors.white),
              ],
        ),
      ),
    );
  }
}