import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<Map<String, String>> _cartItems = [];

  List<Map<String, String>> get cartItems => _cartItems;

  void addToCart({required String name, required String price, required String img}) {
    _cartItems.add({
      'name': name,
      'price': price,
      'img': img,
    });
    notifyListeners();
  }

  void removeFromCart(){
    _cartItems.removeLast();
    notifyListeners();
  }
}
