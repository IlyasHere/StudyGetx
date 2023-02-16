import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/cart_controller.dart';
import 'package:get/get.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Obx(
          () => Container(
        padding: EdgeInsets.symmetric(
          horizontal:  currentWidth > 600 ? 225 : 75,
          vertical: 20
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$${controller.listShoppingCartTotal()}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
