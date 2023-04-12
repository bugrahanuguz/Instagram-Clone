import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'horizontal_listview.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Horizontal_Listview(
          icon_myself: Icon(
            Icons.person_add_alt_1,
            size: 32,
          ),
          icon_name: 'Avatar',
        ),
        Horizontal_Listview(
          icon_path: 'assets/icons/beer.png',
          icon_name: 'Beer',
        ),
        Horizontal_Listview(
            icon_path: 'assets/icons/cocktail.png', icon_name: 'Cocktail'),
        Horizontal_Listview(
            icon_path: 'assets/icons/soda.png', icon_name: 'Soda'),
        Horizontal_Listview(
            icon_path: 'assets/icons/tequila.png', icon_name: 'Tequila'),
        Horizontal_Listview(
            icon_path: 'assets/icons/mojito.png', icon_name: 'Mojito'),
      ]),
    );
  }
}
