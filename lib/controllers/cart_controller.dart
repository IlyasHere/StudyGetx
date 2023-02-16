import 'package:flutter_getx/models/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  // add a dict to store the product in cart
  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar(
      "Product add",
      "You have added the ${product.name} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 1),
    );
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == products);
    } else {
      _products[product] -= 1;
    }
  }

  get products => _products;

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);

  String listShoppingCartTotal() => products.isNotEmpty
      ? products.entries
      .map((product) => product.key.price! * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2)
      : 'is Empty';
}
