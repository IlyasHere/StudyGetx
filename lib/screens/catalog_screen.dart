import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/widgets/catalog_product.dart';
import 'package:get/get.dart';

import 'cart_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(title: Row(
        children: [
          Text("Catalog"),
          Spacer(),
          Text(
            user.email.toString(),
            style: TextStyle(
                fontSize: 10
            ),
          ),
          Spacer(),
          MaterialButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            color: Colors.red,
            child: Text("Sign Out"),
          ),
        ],
      )),
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


