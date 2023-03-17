import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridViewTabs extends StatelessWidget {
  const GridViewTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.only(bottom: 3),
      indicatorColor: Colors.white,
      tabs: <Widget>[tabs(0), tabs(1)],
    );
  }
}

Widget tabs(int index) => Padding(
      padding: const EdgeInsets.all(10),
      child: Image.asset(
        imageAsset[index].toString(),
        height: 25,
      ),
    );
List<String> imageAsset = [
  'assets/images/photos.png',
  'assets/images/tags.png'
];
