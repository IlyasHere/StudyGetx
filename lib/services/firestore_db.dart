import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_getx/models/product_model.dart';

class FirestoreDB{
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Stream<List<Product>> getAllProduct(){
    return  _firebaseFirestore
        .collection('products')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Product.fromSnapShot(doc)).toList();
    });
  }
}