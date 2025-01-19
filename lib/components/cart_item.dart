import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/shoe.dart';
import '../models/cart.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;

  const CartItem({
    Key? key,
    required this.shoe,
  }) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // Remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeitem(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8), // Added padding for better UI spacing
      child: ListTile(
        leading: Image.asset(
          widget.shoe.imagePath,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: Text(widget.shoe.name),
        subtitle: Text('\$${widget.shoe.price.toString()}'),
        // Ensure price is formatted as a string
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
