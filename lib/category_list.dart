import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final categories = ["All", "Sofas", "Chairs", "Wardrobes", "Tables"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => SizedBox(width: 12),
        itemBuilder: (context, index) {
          return Chip(
            label: Text(categories[index]),
            backgroundColor: Colors.yellow[100],
          );
        },
      ),
    );
  }
}
