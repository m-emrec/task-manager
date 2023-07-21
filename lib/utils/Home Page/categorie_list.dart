import 'package:flutter/material.dart';
import 'package:todo/utils/shared/categorie_card.dart';

class CategorieList extends StatelessWidget {
  const CategorieList({super.key});

  /// w = %65
  /// h = %30
  @override
  Widget build(BuildContext context) {
    // final double h = MediaQuery.of(context).size.height;
    // final double w = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 16 / 12,
      child: ListView.builder(
        padding: const EdgeInsets.all(4),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const CategorieCard(
            title: "Dummy Title",
            projectCount: 3,
            avatars: [],
            progress: 0.3,
            icon: "icon",
          );
        },
      ),
    );
  }
}
