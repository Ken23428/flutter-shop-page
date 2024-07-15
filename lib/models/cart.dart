import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan 1',
        price: '236',
        imagePath: 'lib/images/AirJordan1.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Jordan 2',
        price: '220',
        imagePath: 'lib/images/AirJordan2.png',
        description:
            'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.'),
    Shoe(
        name: 'Air Jordan 3',
        price: '248',
        imagePath: 'lib/images/AirJordan3.png',
        description:
            'A secure midfoot strap is suited for scoring binges and defensive stands, so that you can lock in and keep winning.'),
    Shoe(
        name: 'Air Jordan 4',
        price: '190',
        imagePath: 'lib/images/AirJordan4.png',
        description:
            'Bouncy cushioning is paired with soft yet supportive foam for responsiveness and a smooth heel-to-toe transition.'),
  ];

  // list of items in user chart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
