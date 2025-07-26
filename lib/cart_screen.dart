import 'package:flutter/material.dart';
import 'product_model.dart';

class CartScreen extends StatelessWidget {
  final List<int> cart;

  CartScreen({required this.cart});

  @override
  Widget build(BuildContext context) {
    final cartProducts = allProducts.where((p) => cart.contains(p.id)).toList();
    final total = cartProducts.fold(0.0, (sum, p) => sum + p.price);

    return Scaffold(
      appBar: AppBar(title: Text("Shopping Cart")),
      body: cartProducts.isEmpty
          ? Center(child: Text("Your cart is empty."))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartProducts.length,
                    itemBuilder: (context, index) {
                      final product = cartProducts[index];
                      return ListTile(
                        leading: Image.network(product.image, width: 50),
                        title: Text(product.title),
                        subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$${total.toStringAsFixed(2)}",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
