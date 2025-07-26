import 'package:flutter/material.dart';
import 'product_model.dart';

class LikesScreen extends StatelessWidget {
  final List<int> liked;

  LikesScreen({required this.liked});

  @override
  Widget build(BuildContext context) {
    final likedProducts = allProducts
        .where((p) => liked.contains(p.id))
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text("Favorites")),
      body: likedProducts.isEmpty
          ? Center(child: Text("No liked items yet."))
          : ListView.builder(
              itemCount: likedProducts.length,
              itemBuilder: (context, index) {
                final product = likedProducts[index];
                return ListTile(
                  leading: Image.network(product.image, width: 50),
                  title: Text(product.title),
                  subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
                );
              },
            ),
    );
  }
}
