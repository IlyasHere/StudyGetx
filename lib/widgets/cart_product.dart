import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/cart_controller.dart';
import 'package:flutter_getx/models/product_model.dart';

import 'package:get/get.dart';

class CartProduct extends StatelessWidget {
  final CartController controller = Get.find();
  CartProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Obx(() =>
          // height: MediaQuery.of(context).size.height,
    currentWidth > 600 ?
       GridView.builder(
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           childAspectRatio: 3,
         ),
          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CartProductCard(
                controller: controller,
                product: controller.products.keys.toList()[index],
                quantity: controller.products.values.toList()[index],
                index: index,
              );
            },
          )
      : ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: controller.products.length,
    itemBuilder: (BuildContext context, int index) {
    return CartProductCard(
    controller: controller,
    product: controller.products.keys.toList()[index],
    quantity: controller.products.values.toList()[index],
    index: index,
    );
    },
    ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  const CartProductCard(
      {Key? key,
      required this.controller,
      required this.product,
      required this.quantity,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(product.imageUrl),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(child: Text(product.name)),
          IconButton(
            onPressed: () {
              controller.removeProduct(product);
            },
            icon: Icon(Icons.remove_circle),
          ),
          Text('$quantity'),
          IconButton(
            onPressed: () {
              controller.addProduct(product);
            },
            icon: Icon(Icons.add_circle),
          ),
        ],
      ),
    );
  }
}
