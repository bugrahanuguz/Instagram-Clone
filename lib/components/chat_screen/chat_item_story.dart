import 'package:flutter/material.dart';

import '../stories/horizontal_listview.dart';

List icons = [
  'assets/icons/beer.png',
  'assets/icons/tequila.png',
  'assets/icons/cocktail.png',
  'assets/icons/mojito.png',
  'assets/icons/soda.png',
  'assets/icons/tequila.png'
];

Widget singleStory(int index, BuildContext context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: Column(
        children: [
          Stack(
            children: [
              Horizontal_Listview(
                icon_path: icons[index],
                size: 0.12,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.285,
                  child: index == 0
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.1,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey.shade800),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        )
                      : Align(
                          // ignore: sort_child_properties_last
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.26,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade800),
                            child: const Text(
                              "bored",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          alignment: Alignment.topCenter,
                        )),
            ],
          ),
          index == 0
              ? const Text(
                  "Leave a note",
                  style: TextStyle(color: Colors.white),
                )
              : const Text(
                  "xyz",
                  style: TextStyle(color: Colors.white),
                )
        ],
      ),
    );
