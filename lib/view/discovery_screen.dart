import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/discovery_appbar.dart';

import '../components/bottom_nav_bar.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  int pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Text(
      "Discovery",
      style: TextStyle(color: Colors.white),
    );
  }
}
