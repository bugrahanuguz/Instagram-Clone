import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DiscoveryGrid extends StatelessWidget {
  const DiscoveryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          pattern: [
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(2, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(2, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(4, 2),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(4, 2),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(4, 2),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  NetworkImage('https://picsum.photos/500/500?random=$index'),
            )),
          ),
        ),
      ),
    );
  }
}
