import 'package:flutter/material.dart';
import 'package:instagram_clone/components/bottom_nav_bar.dart';
import 'package:instagram_clone/components/chat_screen/chat_screen_appbar.dart';
import 'package:instagram_clone/components/profile_screen/profile.dart';
import 'package:instagram_clone/components/share_screen_appbar.dart';
import 'package:instagram_clone/view/discovery_screen.dart';
import 'package:instagram_clone/components/profile_screen/profile_posts.dart';
import 'package:instagram_clone/view/profile_screen.dart';
import 'package:instagram_clone/view/share_screen.dart';

import 'package:instagram_clone/view_models/home_page_view_model.dart';
import 'package:provider/provider.dart';

import '../components/discovery_appbar.dart';
import '../components/profile_screen/profile_stories.dart';
import '../components/reels_screen/reels_page_view.dart';
import '../components/timeline-appbar.dart';
import 'home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: screen,
      backgroundColor: Colors.black,
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }

  PreferredSizeWidget? get appbar {
    switch (context.watch<HomePageViewModel>().page) {
      case 0:
        return const TimelineAppbar();
      case 1:
        return const DiscoveryAppBar();
      //case 2:
      //return const ShareScreenAppbar();

      case 4:
        return const ChatScreenAppBar();
      default:
        return null;
    }
  }

  Widget get screen {
    switch (context.watch<HomePageViewModel>().page) {
      case 0:
        return MyHomePage();
      case 1:
        return DiscoveryScreen();
      //case 2:
      //return ShareScreenPage();
      case 3:
        return ReelsPageView();
      case 4:
        return ProfileScreenPage();
      default:
        return ProfileStoriesWidget();
    }
  }
}
