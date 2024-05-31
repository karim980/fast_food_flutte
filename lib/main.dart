import 'package:burger_app/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:burger_app/model/fake_data(burger).dart';
import 'package:provider/provider.dart';

import 'controller/cart_controller.dart';
import 'controller/counter_controller.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => CartProvider()),
            ChangeNotifierProvider(create: (_) => CounterProvider())
          ],
      child:  MyApp()),);

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomeScreen(burgers: burgers),
    );
  }
}

