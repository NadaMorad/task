# 🪑 Furniture App

A modern Flutter e-commerce furniture app with a clean UI and multiple screens like Home, Likes, Cart, and Profile.

---

## ✨ Features

- 🏠 **Home screen** with product listings  
- ❤️ **Likes screen** to view favorite products  
- 🛒 **Cart screen** to manage selected items  
- 👤 **User Profile screen**  
- 💛 Add to cart and like functionalities  
- 🧭 Bottom Navigation Bar for screen switching  
- 🎨 Custom theme with smooth UI and rounded layouts  

---

## 📸 Screenshots

### 1. Home Page  
<img width="496" height="635" alt="Home Page" src="https://github.com/user-attachments/assets/06666ecf-c633-471c-853f-421c184bae41" />

---

### 2. Home Page with Favorite Selected  
<img width="482" height="641" alt="Favorite Selected" src="https://github.com/user-attachments/assets/34632a69-5662-431a-8ff5-4fe81c1b44d1" />

---

### 3. Favorite Page  
<img width="498" height="648" alt="Favorite Page" src="https://github.com/user-attachments/assets/757a1f63-ecd6-4b00-85bb-2e5a44664575" />

---

### 4. Cart Page (with items)  
<img width="494" height="641" alt="Cart Page" src="https://github.com/user-attachments/assets/8a15ca5c-3e1e-4845-906f-2782a193c778" />

---

## 📁 Project Structure

task/                            # Root of your Flutter project
├── assets/                      # Images and icons used in the UI
│   └── images/                  # Product images (chairs, etc.)
├── lib/
│   ├── core/                    # AppTheme, colors, spacing, typography
│   ├── data/                    # Product data (dummy or fetched)
│   ├── models/                  # Data models like Product
│   ├── pages/                   # All app screens
│   │   ├── home_screen.dart     # Home screen (product list)
│   │   ├── cart_screen.dart     # Cart screen
│   │   ├── likes_screen.dart    # Favorites screen
│   │   └── profile_screen.dart  # Profile screen
│   ├── widgets/                 # Reusable components
│   │   └── product_card.dart    # Product UI card with like/cart button
│   ├── app_theme.dart           # Global theming
│   └── main.dart                # App entry point, navigation + state
├── screenshots/                 # App screenshots (for README)
├── pubspec.yaml                 # Dependencies and asset declarations
└── README.md                    # Project documentation
