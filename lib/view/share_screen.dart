import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/bottom_nav_bar.dart';
import 'package:instagram_clone/components/share_screen_appbar.dart';

class ShareScreenPage extends StatefulWidget {
  ShareScreenPage({super.key});

  @override
  State<ShareScreenPage> createState() => _ShareScreenPageState();
}

class _ShareScreenPageState extends State<ShareScreenPage> {
  final List<String> _imageUrls = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: ShareScreenAppbar(),
      body: ListView(
        children: [
          Stack(alignment: Alignment.bottomLeft, children: [
            Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height * 0.50,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80, left: 15),
              child: Image.asset(
                'assets/images/elipse.png',
                scale: 1.5,
                alignment: Alignment.bottomLeft,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 11, left: 15),
                        child: Row(
                          children: const [
                            Text(
                              "Gallery",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )),
                  Row(children: [
                    Image.asset(
                        scale: 1.7, 'assets/images/sharescreenimage.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(scale: 1.7, 'assets/images/camera.png'),
                  ])
                ],
              ),
            )
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              children: _imageUrls.map((url) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
