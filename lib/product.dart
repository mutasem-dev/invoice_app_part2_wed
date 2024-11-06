// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  String name;
  int quantity;
  double price;
  Product({
    required this.name,
    required this.quantity,
    required this.price,
  });

  @override
  String toString() => '$name, quantity: $quantity, price: $price';

}
