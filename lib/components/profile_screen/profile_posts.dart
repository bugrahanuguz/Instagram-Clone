import 'package:flutter/material.dart';

class InstagramProfilePage extends StatefulWidget {
  @override
  State<InstagramProfilePage> createState() => _InstagramProfilePageState();
}

class _InstagramProfilePageState extends State<InstagramProfilePage> {
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
  final List<String> _imageUrls2 = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      DefaultTabController(
          initialIndex: 1,
          length: 2,
          child: Column(
            children: [
              TabBar(
                padding: EdgeInsets.only(bottom: 3),
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/photos.png',
                      height: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/tags.png',
                      height: 25,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: [
                    GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
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
                    GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                      children: _imageUrls2.map((url) {
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
                  ],
                ),
              ),
              //const SizedBox(height: 16),
            ],
          ))
    ]);
  }
}
