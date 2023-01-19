import 'package:cloud_firestore/cloud_firestore.dart';

class Product{

  final String name;
  final double price;
  final String imageUrl;

  const Product({required this.name, required this.price, required this.imageUrl
  });

  static Product fromSnapShot(DocumentSnapshot snap){
    Product product = Product(
        name: snap['name'],
        price: snap['price'],
        imageUrl: snap['imageUrl']
    );
        return product;
  }

    // static const List<Product> products = [
    //   Product(
    //     name: 'Apple',
    //     price: 2.99,
    //     imageUrl: 'https://media.istockphoto.com/id/654372976/id/foto/apel.jpg?s=612x612&w=0&k=20&c=QAgIk7QK-aCihNe1x3pn8jGBM5al624yp4NkkcUL7dE='
    //   ),
    //   Product(
    //     name: 'Orange',
    //     price: 2.99,
    //     imageUrl: 'https://media.istockphoto.com/id/185284489/id/foto/jeruk.jpg?s=612x612&w=0&k=20&c=Q9YwZO9TrG26J9GHiqIH1ac7QjwFCgfxwrkUNv7sNzE='
    //   ),
    //    Product(
    //     name: 'Pear',
    //     price: 2.99,
    //     imageUrl: 'https://images.unsplash.com/photo-1615484477778-ca3b77940c25?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'
    //   ),
    // ];
}