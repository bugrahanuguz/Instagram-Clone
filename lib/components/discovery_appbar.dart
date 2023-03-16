import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'custom_icon_button.dart';

class DiscoveryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DiscoveryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.black, title: Text("aaaaa"));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65);
}
