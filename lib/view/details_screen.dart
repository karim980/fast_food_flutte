import 'package:burger_app/view/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/cart_controller.dart';
import '../controller/counter_controller.dart';

class DetailsScreen extends StatelessWidget {
  String img;
  String title;
  String description;
  double price;

  DetailsScreen({
    super.key,
    required this.title,
    required this.img,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ));
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 23),
        child: Center(
            child: Column(
          children: [
            Image(
              image: AssetImage(img),
              width: MediaQuery.of(context).size.width / 2,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Hot & fresh Burger'),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => counterProvider.decrement(),
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '${counterProvider.count}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => counterProvider.increment(),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
            Text(description),
            Spacer(),
            Row(
              children: [
                Column(
                  children: [
                    Text('Total Price'),
                    Text('\$${price.toString()}'),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      // Border radius
                    ),
                  ),
                  onPressed: () {
                    cartProvider.addToCart(
                        name: title,
                        price: '${price * counterProvider.count}',
                        img: img);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(CupertinoIcons.cart_fill,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
