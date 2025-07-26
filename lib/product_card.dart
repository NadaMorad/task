import 'package:flutter/material.dart';
import 'product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final bool isLiked;
  final VoidCallback onLike;
  final VoidCallback onAddToCart;

  const ProductCard({
    required this.product,
    required this.isLiked,
    required this.onLike,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // صورة و زر لايك
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(product.image, height: 100, width: 100),
              Spacer(),
              GestureDetector(
                onTap: onLike,
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.grey,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 8),
          Text(
            product.title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            product.desc,
            style: TextStyle(color: Colors.grey[600], fontSize: 13),
          ),
          SizedBox(height: 12),

          // زر Add to cart و السعر
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.yellow[700],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "\$${product.price.toStringAsFixed(0)}",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: onAddToCart,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                ),
                child: Text("Add to cart"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
