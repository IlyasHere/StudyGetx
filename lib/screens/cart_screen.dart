import 'package:flutter/material.dart';
import '../widgets/cart_product.dart';
import '../widgets/cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CartProduct(),
              CartTotal(),
            ],
          ),
        ),
      ),
    );
  }
}