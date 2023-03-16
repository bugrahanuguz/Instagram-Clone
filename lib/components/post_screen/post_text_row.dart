import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PostTextRow extends StatelessWidget {
  final String? name_of_post_own;
  const PostTextRow({super.key, required this.name_of_post_own});

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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.red, width: 3)),
                  child: ClipOval(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                    ),
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