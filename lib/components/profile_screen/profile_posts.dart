import 'package:flutter/material.dart';

import 'grid_view_tabs.dart';
import 'grid_view_widget.dart';

class InstagramProfilePage extends StatefulWidget {
  @override
  State<InstagramProfilePage> createState() => _InstagramProfilePageState();
}

class _InstagramProfilePageState extends State<InstagramProfilePage> {
  final List<String> imageUrls = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
  ];
  final List<String> imageUrls2 = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Column(
            children: [
              GridViewTabs(),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: [
                    GridViewWidget(
                      image_path: imageUrls,
                    ),
                    GridViewWidget(
                      image_path: imageUrls2,
                    )
                  ],
                ),
              ),
              //const SizedBox(height: 16),
            ],
          ))
    ]);
  }
}
