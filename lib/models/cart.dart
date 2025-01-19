import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '2236',
      description: 'The Fwd Thinking design',
      imagePath: 'lib/images/2.jpg',
    ),
    Shoe(
      name: 'Air Freak',
      price: '226',
      description: 'The Fwd Thinking design',
      imagePath: 'lib/images/3.png',
    ),
    Shoe(
      name: 'Grey Freak',
      price: '81',
      description: 'The Fwd Thinking design',
      imagePath: 'lib/images/1.png',
    ),
    Shoe(
      name: 'White Jordan',
      price: '235',
      description: 'The Fwd Thinking design',
      imagePath: 'lib/images/3.png',
    ),
  ];

// Lsit of items in user cart

  List<Shoe> userCart = [];

// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//adding items form cart
  void addItemtoCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove item form cart
  void removeitem(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
