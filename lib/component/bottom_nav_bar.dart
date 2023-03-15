import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  final int pageIndex;
  final Function(int value) onTap;
  const BottomNavBarWidget(
      {super.key, required this.pageIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      border: Border(top: BorderSide(color: Colors.grey.shade900)),
      backgroundColor: Colors.black,
      iconSize: 32,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/home.png',
            width: size,
            height: size,
          ),
        ),
        const BottomNavigationBarItem(
            icon: Icon(
          Icons.search,
          size: 34,
          color: Colors.white,
        )),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/add.png',
            width: size,
            height: size,
          ),
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
          'assets/icons/reels.png',
          width: size,
          height: size,
        )),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/pp.png',
            width: size,
            height: size,
          ),
        ),
      ],
      onTap: (value) {
        onTap(value);
      },
      currentIndex: pageIndex,
    );
  }
}

double size = 26;
