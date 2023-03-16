import 'package:flutter/material.dart';
import 'package:instagram_clone/view_models/timeline_view_model.dart';
import 'package:provider/provider.dart';

import '../components/bottom_nav_bar.dart';
import '../components/post_screen/posts.dart';
import '../components/stories/stories.dart';
import '../components/timeline-appbar.dart';
import 'chat_screen.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: TimelineAppbar(),
      bottomNavigationBar: BottomNavBarWidget(),
      body: GestureDetector(
        onHorizontalDragEnd: (et) {
           Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
        },
        child: Column(
          children: [
            Expanded(
              child: ListView(
              children: [
              Stories(),
              ...context.watch<TimelineViewModel>().posts.map((e) => Posts(post: e)).toList()
              // Posts(),
              // Posts(),
              // Posts(),
              // Posts(),
              // Posts(),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}