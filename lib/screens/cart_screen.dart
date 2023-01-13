import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/cart_product.dart';
import '../widgets/cart_total.dart';
import '../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart")),
      body: Column(
        children: [
          CartProduct(),
          CartTotal(),
        ],
      ),
    );
  }
}