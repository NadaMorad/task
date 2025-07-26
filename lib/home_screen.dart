import 'package:flutter/material.dart';
import 'product_model.dart';
import 'product_card.dart';
import 'category_list.dart';

class HomeScreen extends StatelessWidget {
  final List<int> liked;
  final List<int> cart;
  final void Function(int) onLikeToggle;
  final void Function(int) onAddToCart;

  const HomeScreen({
    required this.liked,
    required this.cart,
    required this.onLikeToggle,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔶 الهيدر الأصفر
          Container(
            color: Colors.yellow[700],
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 32, color: Colors.black),
                ),
              ],
            ),
          ),

          // 👋 Hello Texts
          Container(
            color: Colors.yellow[700],
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Nada",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "What do you want to buy?",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),

          // 🔍 Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.yellow[800]),
                  hintText: "Search",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          SizedBox(height: 12),

          // 📂 Category List
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CategoryList(),
          ),

          SizedBox(height: 12),

          // 🪑 Product List
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: allProducts.length,
              itemBuilder: (context, index) {
                final product = allProducts[index];
                return ProductCard(
                  product: product,
                  isLiked: liked.contains(product.id),
                  onLike: () => onLikeToggle(product.id),
                  onAddToCart: () => onAddToCart(product.id),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
