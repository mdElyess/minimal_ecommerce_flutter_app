import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "Glasses",
      price: 99.99,
      description:
          "Item description.. More description to describe the product more info here will look like this.",
      imagePath: "assets/glasses.png",
    ),
    // product 2
    Product(
      name: "Hoodie",
      price: 99.99,
      description: "Item description..",
      imagePath: "assets/hoodie.jpg",
    ),
    // product 3
    Product(
      name: "Shoes",
      price: 99.99,
      description: "Item description..",
      imagePath: "assets/shoes.png",
    ),
    // product 4
    Product(
      name: "Watch",
      price: 99.99,
      description: "Item description..",
      imagePath: "assets/watch.png",
    ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
