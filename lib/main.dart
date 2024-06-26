import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/theme.dart';

import 'components/shoppingcart_detail.dart';
import 'components/shoppingcart_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }
}

AppBar _buildShoppingCartAppBar() {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.shopping_cart),
      ),
      SizedBox(width: 16),
    ],
    elevation: 0.0,
  );
}
