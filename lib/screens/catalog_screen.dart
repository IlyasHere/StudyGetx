import 'package:flutter/material.dart';
import 'package:flutter_getx/widgets/catalog_product.dart';
import 'package:get/get.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Catalog")),
    body: SafeArea(
      child: Column(
       children: [
        CatalogProduct(),
        ElevatedButton(
         onPressed: () => Get.to(() => CartScreen()) ,
         child: Text ('Go to Cart'))
       ],
      ),  
    ),
  );
  }
}



