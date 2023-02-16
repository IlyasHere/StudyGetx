import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/cart_controller.dart';
import 'package:flutter_getx/controllers/products_controller.dart';
import 'package:get/get.dart';

class CatalogProduct extends StatelessWidget {
  final productController = Get.put(ProdcutController());

  CatalogProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
          child: ListView.builder(
              itemCount: productController.products.length,
              itemBuilder: (BuildContext context, int index) {
                return CatalogProductCard(index: index);
              })),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());

  final ProdcutController prodcutController = Get.find();
  final int index;

  CatalogProductCard({
    Key? key,
    required this.index,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: currentWidth > 600 ? 150 : 20,
        vertical: 10,
      ),
      child: Row(children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(
            prodcutController.products[index].imageUrl,
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          // child: Text(
          //   prodcutController.products[index].name,
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          // ),
          child: Text(
            prodcutController.products[index].name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Expanded(
          child: Text('${prodcutController.products[index].price}'),
        ),
        IconButton(
          onPressed: () {
            cartController.addProduct(prodcutController.products[index]);
          },
          icon: Icon(
            Icons.add_circle,
          ),
        ),
      ]),
    );
  }
}