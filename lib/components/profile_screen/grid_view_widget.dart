import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  final List<String>? image_path;
  const GridViewWidget({super.key, this.image_path});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      children: image_path!.map((url) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    );
  }
}
