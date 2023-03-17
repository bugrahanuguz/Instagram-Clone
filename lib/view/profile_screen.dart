import 'package:flutter/material.dart';
import '../components/profile_screen/profile.dart';
import '../components/profile_screen/profile_posts.dart';
import '../components/profile_screen/profile_stories.dart';

class ProfileScreenPage extends StatefulWidget {
  const ProfileScreenPage({super.key});

  @override
  State<ProfileScreenPage> createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const ProfileScreen(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        const ProfileStoriesWidget(),
        InstagramProfilePage(),
      ]),
    );
  }
}
