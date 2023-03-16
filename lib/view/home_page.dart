import 'package:flutter/material.dart';
import 'package:instagram_clone/view_models/timeline_view_model.dart';
import 'package:provider/provider.dart';

import '../components/bottom_nav_bar.dart';
import '../components/post_screen/posts.dart';
import '../components/stories/stories.dart';
import '../components/timeline-appbar.dart';
import 'chat_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    TimelineViewModel timelineViewModel =
        Provider.of<TimelineViewModel>(context, listen: false);
    return Column(children: [
      Expanded(
        child: GestureDetector(
          onHorizontalDragEnd: (e) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(),
              ),
            );
          },
          child: ListView(
            children: [
              Stories(),
              ...timelineViewModel.posts.map((e) => Posts(post: e)).toList(),
            ],
          ),
        ),
      ),
    ]);
  }
}
