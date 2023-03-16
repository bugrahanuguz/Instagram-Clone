import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../stories/horizontal_listview.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  
  get icon_path => null;
  
  get icon_myself => null;
  
  get icon_name => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Horizontal_Listview(
                    icon_path: 'assets/icons/beer.png',
                    icon_name: 'Beer',
                    size: 0.1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}