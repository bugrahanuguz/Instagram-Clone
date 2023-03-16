import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/view_models/home_page_view_model.dart';
import 'package:provider/provider.dart';

class BottomNavBarWidget extends StatefulWidget {
  BottomNavBarWidget({
    super.key,
  });

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      border: Border(top: BorderSide(color: Colors.grey.shade900)),
      backgroundColor: Colors.black,
      iconSize: 32,
      items: [
        for (int i = 0; i < icons.length; i++)
          BottomNavigationBarItem(icon: bottomIcon(icons[i], i))
      ],
    );
  }

  Widget bottomIcon(String icon, int index) => GestureDetector(
        onTap: () {
          context.read<HomePageViewModel>().setPage(index);
        },
        child: Opacity(
          opacity: context.watch<HomePageViewModel>().page == index ? 1.0 : 0.7,
          child: Image.asset(
            icon,
            width: size,
            height: size,
          ),
        ),
      );

  List<String> icons = [
    'assets/icons/home.png',
    'assets/icons/search.png',
    'assets/icons/add.png',
    'assets/icons/reels.png',
    'assets/icons/pp.png',
  ];
}

double size = 26;
