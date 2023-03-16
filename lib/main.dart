import 'package:flutter/material.dart';
import 'package:instagram_clone/components/chat_screen/chat_screen.dart';
import 'package:instagram_clone/components/timeline-appbar.dart';
import 'package:instagram_clone/components/stories/stories.dart';
import 'package:instagram_clone/view_models/home_page_view_model.dart';
import 'package:instagram_clone/view_models/timeline_view_model.dart';
import 'package:provider/provider.dart';

import 'components/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomePageViewModel()),
        ChangeNotifierProvider(create: (context) => TimelineViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: MyHomePage(
          title: '',
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
      body: Column(
        children: [
          Stories(),
        ],
      ),
    );
  }
}
