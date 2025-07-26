class Product {
  final int id;
  final String title;
  final String desc;
  final String image;
  final double price;

  Product({
    required this.id,
    required this.title,
    required this.desc,
    required this.image,
    required this.price,
  });
}

final List<Product> allProducts = [
  Product(
    id: 1,
    title: 'Modern Sofa',
    desc: 'Comfortable and stylish',
    image: 'https://i.imgur.com/JqKDdxj.png',
    price: 250.0,
  ),
  Product(
    id: 2,
    title: 'Minimal Chair',
    desc: 'Simple and elegant',
    image: 'https://i.imgur.com/JqKDdxj.png',
    price: 120.0,
  ),
  Product(
    id: 3,
    title: 'Wooden Wardrobe',
    desc: 'Spacious and durable',
    image: 'https://i.imgur.com/JqKDdxj.png',
    price: 300.0,
  ),
];
