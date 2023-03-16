import 'package:flutter/material.dart';
import 'package:instagram_clone/components/bottom_nav_bar.dart';
import 'package:instagram_clone/view/discovery_screen.dart';

import 'package:instagram_clone/view_models/home_page_view_model.dart';
import 'package:provider/provider.dart';

import '../components/discovery_appbar.dart';
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
      default:
        return Container();
    }
  }
}
