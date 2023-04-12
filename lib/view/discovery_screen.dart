import 'package:flutter/material.dart';

import 'package:instagram_clone/view_models/discovery_view_model.dart';
import 'package:provider/provider.dart';

import '../components/discovery_screen/discovery_postlist.dart';
import '../components/discovery_screen/discovery_userlist.dart';

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: !context.watch<DiscoveryViewModel>().searchView
          ? DiscoveryGrid()
          : DiscoveryUserList(),
    );
  }
}
