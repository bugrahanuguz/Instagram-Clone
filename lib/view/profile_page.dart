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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Username',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/photos.png',
                height: 30,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/tags.png',
                height: 30,
              ),
            ),
          ]),
          SizedBox(height: 16),
          Expanded(
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
