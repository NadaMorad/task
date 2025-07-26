import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'cart_screen.dart';
import 'likes_screen.dart';
import 'profile_screen.dart';
import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<int> liked = [];
  List<int> cart = [];

  void toggleLike(int id) {
    setState(() {
      liked.contains(id) ? liked.remove(id) : liked.add(id);
    });
  }

  void addToCart(int id) {
    if (!cart.contains(id)) {
      setState(() {
        cart.add(id);
      });
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreen(
        liked: liked,
        cart: cart,
        onLikeToggle: toggleLike,
        onAddToCart: addToCart,
      ),
      LikesScreen(liked: liked),
      CartScreen(cart: cart),
      ProfileScreen(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Color(0xFFFFA726), // درجة اللون الأورنج الأساسية
          unselectedItemColor: Colors.grey, // لون رصاصي للعناصر غير النشطة
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Likes"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
