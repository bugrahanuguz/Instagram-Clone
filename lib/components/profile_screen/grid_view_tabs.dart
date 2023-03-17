import 'package:flutter/material.dart';
import 'package:instagram_clone/view_models/profile_view_model.dart';
import 'package:provider/provider.dart';

class GridViewTabs extends StatefulWidget {
  const GridViewTabs({super.key});

  @override
  State<GridViewTabs> createState() => _GridViewTabsState();
}

class _GridViewTabsState extends State<GridViewTabs> {
  @override
  Widget build(BuildContext context) {
    bool isSelected;
    return TabBar(
      onTap: (value) {
        context.read<ProfileViewModel>().setPage(value);
      },
      padding: EdgeInsets.only(bottom: 3),
      indicatorColor: Colors.white,
      tabs: <Widget>[tabs(0, context), tabs(1, context)],
    );
  }
}

Widget tabs(int index, BuildContext context) => Padding(
      padding: const EdgeInsets.all(10),
      child: Opacity(
        opacity: context.watch<ProfileViewModel>().page == index ? 1.0 : 0.7,
        child: Image.asset(
          imageAsset[index].toString(),
          height: 25,
          color: Colors.white,
        ),
      ),
    );
List<String> imageAsset = [
  'assets/images/photos.png',
  'assets/images/tags.png'
];
