import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/cart_controller.dart';


class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            cartProvider.removeFromCart();
          }, child: Text('remove')),
          Expanded(
            child: ListView.builder(
              itemCount: cartProvider.cartItems.length,
              itemBuilder: (context, index) {
                final item = cartProvider.cartItems[index];
                return ListTile(
                  title: Text(item['name']!),
                  subtitle: Text(item['price']!),
                  leading: Image.asset(item['img']!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
