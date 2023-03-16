import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PostIconBottom extends StatelessWidget {
  final String? icon_path_post;
  const PostIconBottom({super.key, required this.icon_path_post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 15),
      child: Column(
        children: [
          Image.asset(icon_path_post!, scale: 2,),
          
        ],
      )
    );
  }
}