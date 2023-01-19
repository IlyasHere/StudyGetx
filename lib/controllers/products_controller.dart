import 'package:flutter_getx/models/product_model.dart';
import 'package:flutter_getx/services/firestore_db.dart';
import 'package:get/get.dart';

class ProdcutController extends GetxController{
  final products = <Product>[].obs;

  @override
  void onInit(){
    products.bindStream(FirestoreDB().getAllProduct());
    super.onInit();
  }
}