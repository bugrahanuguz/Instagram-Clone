import 'package:flutter/material.dart';
import 'package:instagram_clone/app_init.dart';
import 'package:instagram_clone/view_models/discovery_view_model.dart';
import 'package:instagram_clone/view_models/home_page_view_model.dart';
import 'package:instagram_clone/view_models/profile_view_model.dart';
import 'package:instagram_clone/view_models/timeline_view_model.dart';
import 'package:provider/provider.dart';

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
        ChangeNotifierProvider(create: (context) => TimelineViewModel()),
        ChangeNotifierProvider(create: (context) => DiscoveryViewModel()),
        ChangeNotifierProvider(create: (context) => ProfileViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: AppInit(),
      ),
    );
  }
}
