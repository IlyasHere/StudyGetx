class Product{

  final String name;
  final double price;
  final String imageUrl;

  const Product({required this.name, required this.price, required this.imageUrl
  });

    static const List<Product> products = [
      Product(
        name: 'Apple',
        price: 2.99,
        imageUrl: 'https://media.istockphoto.com/id/654372976/id/foto/apel.jpg?s=612x612&w=0&k=20&c=QAgIk7QK-aCihNe1x3pn8jGBM5al624yp4NkkcUL7dE='
      ),
      Product(
        name: 'Orange',
        price: 2.99,
        imageUrl: 'https://media.istockphoto.com/id/654372976/id/foto/apel.jpg?s=612x612&w=0&k=20&c=QAgIk7QK-aCihNe1x3pn8jGBM5al624yp4NkkcUL7dE='
      ),
       Product(
        name: 'Pear',
        price: 2.99,
        imageUrl: 'https://media.istockphoto.com/id/185284489/id/foto/jeruk.jpg?s=612x612&w=0&k=20&c=Q9YwZO9TrG26J9GHiqIH1ac7QjwFCgfxwrkUNv7sNzE='
      ),
    ];
}